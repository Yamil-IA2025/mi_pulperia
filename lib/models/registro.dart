// lib/models/registro.dart

class Registro {
  final String id;
  final String pulperiaId;
  final String? productoId;
  final String tipo; // 'venta', 'inventario_cierre', etc.
  
  final double? cantidad;
  final double? unidadPrincipal;
  final double? unidadSecundaria;
  
  final double? precioCosto;
  final double? precioVenta;
  
  final DateTime fechaHora;
  final bool esCorte;
  final int numeroCorte;
  
  final Map<String, dynamic> contexto;
  
  final bool sincronizado;
  final DateTime? fechaSincronizacion;

  Registro({
    required this.id,
    required this.pulperiaId,
    this.productoId,
    required this.tipo,
    this.cantidad,
    this.unidadPrincipal,
    this.unidadSecundaria,
    this.precioCosto,
    this.precioVenta,
    required this.fechaHora,
    this.esCorte = false,
    this.numeroCorte = 1,
    Map<String, dynamic>? contexto,
    this.sincronizado = false,
    this.fechaSincronizacion,
  }) : contexto = contexto ?? {};

  // Factory para crear desde la base local
  factory Registro.fromLocal(dynamic local) {
    return Registro(
      id: local.id,
      pulperiaId: local.pulperiaId,
      productoId: local.productoId,
      tipo: local.tipo,
      cantidad: local.cantidad,
      unidadPrincipal: local.unidadPrincipal,
      unidadSecundaria: local.unidadSecundaria,
      precioCosto: local.precioCosto,
      precioVenta: local.precioVenta,
      fechaHora: local.fechaHora,
      esCorte: local.esCorte,
      numeroCorte: local.numeroCorte,
      contexto: _parseContexto(local.contexto),
      sincronizado: local.sincronizado,
      fechaSincronizacion: local.fechaSincronizacion,
    );
  }

  static Map<String, dynamic> _parseContexto(String json) {
    // Implementar parseo seguro
    try {
      // return jsonDecode(json);
      return {}; // Simplificado
    } catch (_) {
      return {};
    }
  }

  // Helper: ¿Es venta a crédito?
  bool get esCredito => contexto['es_credito'] == true;
  
  // Helper: Cliente de fiado (si aplica)
  String? get clienteFiadoId => contexto['cliente_fiado_id'];
  
  // Helper: Días de plazo (si aplica)
  int? get diasPlazo => contexto['dias_plazo'];

  // Calcular monto total de la transacción
  double get montoTotal => (precioVenta ?? 0) * (cantidad ?? 0);
}