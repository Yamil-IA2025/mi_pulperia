// lib/services/registro_service.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../database/database.dart';
import '../models/registro.dart';
import '../providers/app_state.dart';

final registroServiceProvider = Provider<RegistroService>((ref) {
  return RegistroService(
    ref.watch(databaseProvider),
    ref.read(resumenDiaProvider.notifier),
  );
});

class RegistroService {
  final AppDatabase _db;
  final ResumenDiaNotifier _resumenNotifier;

  RegistroService(this._db, this._resumenNotifier);

  // Registrar una venta simple
  Future<String> registrarVenta({
    required String pulperiaId,
    required String productoId,
    required double cantidad,
    required double? unidadPrincipal,
    required double? unidadSecundaria,
    required double precioVenta,
    double? precioCosto,
    bool esCredito = false,
    String? clienteFiadoId,
    int? diasPlazo,
    String? nota,
  }) async {
    final id = const Uuid().v4();
    final ahora = DateTime.now();

    final contexto = <String, dynamic>{
      if (esCredito) 'es_credito': true,
      if (clienteFiadoId != null) 'cliente_fiado_id': clienteFiadoId,
      if (diasPlazo != null) 'dias_plazo': diasPlazo,
      if (nota != null) 'nota': nota,
    };

    await _db.guardarRegistro(RegistrosCompanion(
      id: Value(id),
      pulperiaId: Value(pulperiaId),
      productoId: Value(productoId),
      tipo: Value('venta'),
      cantidad: Value(cantidad),
      unidadPrincipal: Value(unidadPrincipal),
      unidadSecundaria: Value(unidadSecundaria),
      precioVenta: Value(precioVenta),
      precioCosto: Value(precioCosto),
      fechaHora: Value(ahora),
      contexto: Value(contexto.toString()), // JSON string
    ));

    // Si es crédito, crear el fiado
    if (esCredito && clienteFiadoId != null) {
      await _crearFiadoDesdeVenta(
        pulperiaId: pulperiaId,
        clienteId: clienteFiadoId,
        registroVentaId: id,
        monto: precioVenta * cantidad,
        diasPlazo: diasPlazo ?? 7,
      );
    }

    // Actualizar resumen en UI
    await _resumenNotifier.recargar();

    return id;
  }

  // Registrar cierre de inventario con peso
  Future<String> registrarInventarioCierre({
    required String pulperiaId,
    required String productoId,
    required double unidadPrincipal, // qq, litros, cartones
    required double? unidadSecundaria, // lb, ml, unidades
    required bool esCorte,
    int numeroCorte = 1,
  }) async {
    final id = const Uuid().v4();
    final ahora = DateTime.now();

    await _db.guardarRegistro(RegistrosCompanion(
      id: Value(id),
      pulperiaId: Value(pulperiaId),
      productoId: Value(productoId),
      tipo: Value('inventario_cierre'),
      unidadPrincipal: Value(unidadPrincipal),
      unidadSecundaria: Value(unidadSecundaria),
      fechaHora: Value(ahora),
      esCorte: Value(esCorte),
      numeroCorte: Value(numeroCorte),
    ));

    // Calcular consumo si hay registro anterior
    await _calcularConsumoSiAplica(pulperiaId, productoId);

    await _resumenNotifier.recargar();
    return id;
  }

  Future<void> _crearFiadoDesdeVenta({
    required String pulperiaId,
    required String clienteId,
    required String registroVentaId,
    required double monto,
    required int diasPlazo,
  }) async {
    final id = const Uuid().v4();
    final fechaVencimiento = DateTime.now().add(Duration(days: diasPlazo));

    await _db.insertarFiado(FiadosCompanion(
      id: Value(id),
      pulperiaId: Value(pulperiaId),
      clienteId: Value(clienteId),
      registroVentaId: Value(registroVentaId),
      montoOriginal: Value(monto),
      saldoPendiente: Value(monto),
      fechaFiado: Value(DateTime.now()),
      fechaVencimiento: Value(fechaVencimiento),
      estado: Value('pendiente'),
    ));

    // Actualizar saldo del cliente
    await _db.actualizarSaldoCliente(clienteId, monto);
  }

  Future<void> _calcularConsumoSiAplica(String pulperiaId, String productoId) async {
    // Lógica para calcular diferencia entre inventarios
    // y actualizar el registro con ventas_calculadas
  }

  // Registrar pago de fiado (total o parcial)
  Future<void> registrarPagoFiado({
    required String fiadoId,
    required double monto,
    required String metodo, // 'efectivo', 'transferencia', etc.
    String? nota,
  }) async {
    final fiado = await _db.getFiadoPorId(fiadoId);
    if (fiado == null) throw Exception('Fiado no encontrado');

    // Agregar pago al array
    final nuevoPago = {
      'fecha': DateTime.now().toIso8601String(),
      'monto': monto,
      'metodo': metodo,
      if (nota != null) 'nota': nota,
    };

    final pagosActualizados = [...fiado.pagos, nuevoPago];
    final saldoNuevo = fiado.saldoPendiente - monto;

    await _db.actualizarFiado(
      fiadoId,
      FiadosCompanion(
        pagos: Value(pagosActualizados.toString()),
        saldoPendiente: Value(saldoNuevo),
        estado: Value(saldoNuevo <= 0 ? 'pagado' : 'parcial'),
        ultimoPagoFecha: Value(DateTime.now()),
        ultimoPagoMonto: Value(monto),
      ),
    );

    // Actualizar saldo del cliente
    await _db.actualizarSaldoCliente(fiado.clienteId, -monto);

    await _resumenNotifier.recargar();
  }
}