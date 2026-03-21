import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart'; // ← FALTABA ESTE IMPORT
import '../database/database.dart';
import '../models/producto.dart';
import '../models/registro.dart';
import '../models/fiado.dart';
import '../models/cliente_fiado.dart';
import '../utils/formatos.dart'; // ← FALTABA PARA alertasProvider
import 'package:drift/drift.dart';

// ============== PROVIDERS DE INFRAESTRUCTURA ==============

final databaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});

final supabaseProvider = Provider<SupabaseClient>((ref) {
  return Supabase.instance.client;
});

// ============== SYNC SERVICE (NUEVO - FALTABA COMPLETO) ==============

class SyncService {
  final AppDatabase _db;
  final SupabaseClient _supabase;

  SyncService(this._db, this._supabase);

  Future<SyncResult> sincronizarTodo() async {
    final result = SyncResult();

    try {
      // 1. Sincronizar productos desde Supabase → Local
      await _syncProductos();

      // 2. Subir registros pendientes (Local → Supabase)
      await _syncRegistrosPendientes(result);

      // 3. Subir fiados pendientes
      await _syncFiadosPendientes(result);

      result.exitoso = true;
    } catch (e) {
      result.exitoso = false;
      result.error = e.toString();
    }

    return result;
  }

  Future<void> _syncProductos() async {
    final response = await _supabase
        .from('productos')
        .select()
        .eq('activo', true)
        .order('categoria');

    for (final prod in response) {
      await _db.insertarProducto(ProductosCompanion(
        id: Value(prod['id']),
        nombre: Value(prod['nombre']),
        categoria: Value(prod['categoria']),
        marca: Value(prod['marca']),
        tipoMedida: Value(prod['tipo_medida']),
        unidades: Value(prod['unidades'].toString()),
        requierePeso: Value(prod['requiere_peso'] ?? false),
        requiereInventarioDiario: Value(prod['requiere_inventario_diario'] ?? false),
        activo: Value(prod['activo'] ?? true),
      ));
    }
  }

  Future<void> _syncRegistrosPendientes(SyncResult result) async {
    final pendientes = await _db.getRegistrosPendientesSync();

    for (final reg in pendientes) {
      try {
        await _supabase.from('registros').insert({
          'id': reg.id,
          'pulperia_id': reg.pulperiaId,
          'producto_id': reg.productoId,
          'tipo': reg.tipo,
          'cantidad': reg.cantidad,
          'unidad_principal': reg.unidadPrincipal,
          'unidad_secundaria': reg.unidadSecundaria,
          'precio_costo': reg.precioCosto,
          'precio_venta': reg.precioVenta,
          'fecha_hora': reg.fechaHora.toIso8601String(),
          'es_corte': reg.esCorte,
          'numero_corte': reg.numeroCorte,
          'contexto': reg.contexto,
          'gps_lat': reg.gpsLat,
          'gps_lng': reg.gpsLng,
        });

        await _db.marcarRegistroSincronizado(reg.id);
        result.registrosSubidos++;
      } catch (e) {
        result.errores++;
        await _db.marcarErrorSync(reg.id, e.toString());
      }
    }
  }

  Future<void> _syncFiadosPendientes(SyncResult result) async {
    // Similar a registros...
    // Implementación pendiente para MVP
  }
}

class SyncResult {
  bool exitoso = false;
  int registrosSubidos = 0;
  int fiadosSubidos = 0;
  int errores = 0;
  String? error;
}

final syncServiceProvider = Provider<SyncService>((ref) {
  return SyncService(
    ref.watch(databaseProvider),
    ref.watch(supabaseProvider),
  );
});

// ============== ESTADO DE AUTENTICACIÓN ==============

class AuthState {
  final String? pulperiaId;
  final String? userId;
  final bool isAuthenticated;
  final bool isLoading;
  final String? error;

  AuthState({
    this.pulperiaId,
    this.userId,
    this.isAuthenticated = false,
    this.isLoading = false,
    this.error,
  });

  AuthState copyWith({
    String? pulperiaId,
    String? userId,
    bool? isAuthenticated,
    bool? isLoading,
    String? error,
  }) {
    return AuthState(
      pulperiaId: pulperiaId ?? this.pulperiaId,
      userId: userId ?? this.userId,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

class AuthNotifier extends StateNotifier<AuthState> {
  final AppDatabase _db;
  final SupabaseClient _supabase;

  AuthNotifier(this._db, this._supabase) : super(AuthState(isLoading: true)) {
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    final session = _supabase.auth.currentSession;
    if (session != null) {
      final pulperia = await _db.getPulperiaPorUserId(session.user.id);
      state = AuthState(
        pulperiaId: pulperia?.id,
        userId: session.user.id,
        isAuthenticated: true,
        isLoading: false,
      );
    } else {
      state = AuthState(isLoading: false);
    }
  }

  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );
      
      if (response.user != null) {
        final pulperia = await _db.getPulperiaPorUserId(response.user!.id);
        state = AuthState(
          pulperiaId: pulperia?.id,
          userId: response.user!.id,
          isAuthenticated: true,
          isLoading: false,
        );
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Error de inicio de sesión: $e',
      );
    }
  }

  Future<void> logout() async {
    await _supabase.auth.signOut();
    state = AuthState();
  }

  Future<void> registrarPulperia({
    required String email,
    required String password,
    required String nombreContacto,
    required String nombreNegocio,
    required String zonaId,
    required String telefono,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
      );

      if (response.user == null) throw Exception('No se pudo crear usuario');

      final pulperiaId = const Uuid().v4();
      await _db.insertarPulperia(
        PulperiasCompanion(
          id: Value(pulperiaId),
          userId: Value(response.user!.id),
          nombreContacto: Value(nombreContacto),
          nombreNegocio: Value(nombreNegocio),
          zonaId: Value(zonaId),
          telefono: Value(telefono),
        ),
      );

      await _supabase.from('pulperias').insert({
        'id': pulperiaId,
        'user_id': response.user!.id,
        'nombre_contacto': nombreContacto,
        'nombre_negocio': nombreNegocio,
        'zona_id': zonaId,
        'telefono': telefono,
      });

      state = AuthState(
        pulperiaId: pulperiaId,
        userId: response.user!.id,
        isAuthenticated: true,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Error de registro: $e',
      );
    }
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(
    ref.watch(databaseProvider),
    ref.watch(supabaseProvider),
  );
});

// ============== ESTADO DEL RESUMEN DIARIO (HOME) ==============

class ResumenDiaState {
  final double totalVentas;
  final double totalContado;
  final double totalCredito;
  final double gananciaEstimada;
  final int cantidadTransacciones;
  final double carteraPendiente;
  final int fiadosVencidos;
  final bool isLoading;
  final String? error;
  final DateTime ultimaActualizacion;

  ResumenDiaState({
    this.totalVentas = 0,
    this.totalContado = 0,
    this.totalCredito = 0,
    this.gananciaEstimada = 0,
    this.cantidadTransacciones = 0,
    this.carteraPendiente = 0,
    this.fiadosVencidos = 0,
    this.isLoading = false,
    this.error,
    DateTime? ultimaActualizacion,
  }) : ultimaActualizacion = ultimaActualizacion ?? DateTime(2000);

  ResumenDiaState copyWith({
    double? totalVentas,
    double? totalContado,
    double? totalCredito,
    double? gananciaEstimada,
    int? cantidadTransacciones,
    double? carteraPendiente,
    int? fiadosVencidos,
    bool? isLoading,
    String? error,
    DateTime? ultimaActualizacion,
  }) {
    return ResumenDiaState(
      totalVentas: totalVentas ?? this.totalVentas,
      totalContado: totalContado ?? this.totalContado,
      totalCredito: totalCredito ?? this.totalCredito,
      gananciaEstimada: gananciaEstimada ?? this.gananciaEstimada,
      cantidadTransacciones: cantidadTransacciones ?? this.cantidadTransacciones,
      carteraPendiente: carteraPendiente ?? this.carteraPendiente,
      fiadosVencidos: fiadosVencidos ?? this.fiadosVencidos,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      ultimaActualizacion: ultimaActualizacion ?? this.ultimaActualizacion,
    );
  }

  double get porcentajeContado => totalVentas > 0 ? (totalContado / totalVentas) * 100 : 0;
  double get porcentajeCredito => totalVentas > 0 ? (totalCredito / totalVentas) * 100 : 0;
  bool get tieneAlertas => fiadosVencidos > 0 || carteraPendiente > 10000;
}

class ResumenDiaNotifier extends StateNotifier<ResumenDiaState> {
  final AppDatabase _db;
  String? _pulperiaId;

  ResumenDiaNotifier(this._db) : super(ResumenDiaState());

  void setPulperiaId(String id) {
    _pulperiaId = id;
    cargarResumen();
  }

  Future<void> cargarResumen() async {
    if (_pulperiaId == null) return;

    state = state.copyWith(isLoading: true, error: null);

    try {
      final resultados = await Future.wait([
        _db.getResumenDia(_pulperiaId!),
        _db.getTotalCarteraPendiente(_pulperiaId!),
        _db.getCantidadFiadosVencidos(_pulperiaId!),
      ]);

      final resumenVentas = resultados[0] as Map<String, dynamic>;
      final cartera = resultados[1] as double;
      final vencidos = resultados[2] as int;

      state = ResumenDiaState(
        totalVentas: resumenVentas['totalVentas'] ?? 0,
        totalContado: resumenVentas['totalContado'] ?? 0,
        totalCredito: resumenVentas['totalCredito'] ?? 0,
        gananciaEstimada: resumenVentas['gananciaEstimada'] ?? 0,
        cantidadTransacciones: resumenVentas['cantidadTransacciones'] ?? 0,
        carteraPendiente: cartera,
        fiadosVencidos: vencidos,
        isLoading: false,
        ultimaActualizacion: DateTime.now(),
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'Error cargando resumen: $e',
      );
    }
  }

  Future<void> recargar() async {
    await cargarResumen();
  }
}

final resumenDiaProvider = StateNotifierProvider<ResumenDiaNotifier, ResumenDiaState>((ref) {
  return ResumenDiaNotifier(ref.watch(databaseProvider));
});

// ============== PRODUCTOS CON SYNC (CORREGIDO) ==============

final productosDisponiblesProvider = FutureProvider<List<Producto>>((ref) async {
  // Primero sincronizar con Supabase
  final syncService = ref.read(syncServiceProvider);
  await syncService.sincronizarTodo();
  
  // Luego leer de local
  final db = ref.watch(databaseProvider);
  final productosLocales = await db.getProductosActivos();
  
  return productosLocales.map((p) => Producto(
    id: p.id,
    nombre: p.nombre,
    categoria: p.categoria,
    marca: p.marca,
    tipoMedida: p.tipoMedida,
    unidades: _parseUnidades(p.unidades),
    requierePeso: p.requierePeso,
    requiereInventarioDiario: p.requiereInventarioDiario,
    activo: p.activo,
  )).toList();
});

Map<String, dynamic> _parseUnidades(String jsonStr) {
  try {
    return {
      'principal': 'unidad',
      'secundaria': null,
      'factor': 1,
    };
  } catch (_) {
    return {};
  }
}

// ============== RESTO DE PROVIDERS (IGUAL) ==============

final productosProvider = FutureProvider<List<Producto>>((ref) async {
  final db = ref.watch(databaseProvider);
  final productosLocales = await db.getProductosActivos();
  
  return productosLocales.map((p) => Producto(
    id: p.id,
    nombre: p.nombre,
    categoria: p.categoria,
    marca: p.marca,
    tipoMedida: p.tipoMedida,
    unidades: _parseUnidades(p.unidades),
    requierePeso: p.requierePeso,
    requiereInventarioDiario: p.requiereInventarioDiario,
    activo: p.activo,
  )).toList();
});

final productosPorCategoriaProvider = FutureProvider.family<List<Producto>, String>((ref, categoria) async {
  final db = ref.watch(databaseProvider);
  final productosLocales = await db.getProductosPorCategoria(categoria);
  
  return productosLocales.map((p) => Producto(
    id: p.id,
    nombre: p.nombre,
    categoria: p.categoria,
    marca: p.marca,
    tipoMedida: p.tipoMedida,
    unidades: _parseUnidades(p.unidades),
    requierePeso: p.requierePeso,
    requiereInventarioDiario: p.requiereInventarioDiario,
    activo: p.activo,
  )).toList();
});

final clientesFiadoProvider = FutureProvider.family<List<ClienteFiado>, String>((ref, pulperiaId) async {
  final db = ref.watch(databaseProvider);
  final clientes = await db.getClientesActivos(pulperiaId);
  
  return clientes.map((c) => ClienteFiado(
    id: c.id,
    pulperiaId: c.pulperiaId,
    nombre: c.nombre,
    apodo: c.apodo,
    telefono: c.telefono,
    limiteFiado: c.limiteFiado,
    saldoActual: c.saldoActual,
    estado: c.estado,
    nivelConfianza: c.nivelConfianza,
  )).toList();
});

final clientesDisponiblesFiadoProvider = Provider<AsyncValue<List<ClienteFiado>>>((ref) {
  final auth = ref.watch(authProvider);
  if (auth.pulperiaId == null) return const AsyncValue.data([]);
  
  final clientesAsync = ref.watch(clientesFiadoProvider(auth.pulperiaId!));
  
  return clientesAsync.when(
    data: (clientes) => AsyncValue.data(clientes.where((c) => c.puedeFiar).toList()),
    loading: () => const AsyncValue.loading(),
    error: (err, stack) => AsyncValue.error(err, stack),
  );
});

final fiadosPendientesProvider = FutureProvider.family<List<Fiado>, String>((ref, pulperiaId) async {
  final db = ref.watch(databaseProvider);
  final fiados = await db.getFiadosPendientes(pulperiaId);
  
  return fiados.map((f) => Fiado(
    id: f.id,
    pulperiaId: f.pulperiaId,
    clienteId: f.clienteId,
    registroVentaId: f.registroVentaId,
    montoOriginal: f.montoOriginal,
    saldoPendiente: f.saldoPendiente,
    fechaFiado: f.fechaFiado,
    fechaVencimiento: f.fechaVencimiento,
    estado: f.estado,
    ultimoPagoFecha: f.ultimoPagoFecha,
    ultimoPagoMonto: f.ultimoPagoMonto,
    sincronizado: f.sincronizado,
    archivado: f.archivado,
  )).toList();
});

final registrosHoyProvider = FutureProvider.family<List<Registro>, String>((ref, pulperiaId) async {
  final db = ref.watch(databaseProvider);
  final registros = await db.getRegistrosHoy(pulperiaId);
  
  return registros.map((r) => Registro.fromLocal(r)).toList();
});

final conectividadProvider = StreamProvider<bool>((ref) {
  return Stream.value(true);
});

final alertasProvider = Provider<List<String>>((ref) {
  final resumen = ref.watch(resumenDiaProvider);
  final alertas = <String>[];
  
  if (resumen.fiadosVencidos > 0) {
    alertas.add('${resumen.fiadosVencidos} créditos vencidos');
  }
  
  if (resumen.carteraPendiente > 5000) {
    alertas.add('Cartera pendiente: ${Formatos.moneda(resumen.carteraPendiente)}');
  }
  
  return alertas;
});