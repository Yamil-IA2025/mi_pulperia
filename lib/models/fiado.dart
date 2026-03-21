// lib/models/fiado.dart

class Fiado {
  final String id;
  final String pulperiaId;
  final String clienteId;
  final String? registroVentaId;
  
  final double montoOriginal;
  final double saldoPendiente;
  final List<Map<String, dynamic>> pagos;
  
  final DateTime fechaFiado;
  final DateTime? fechaVencimiento;
  final String estado; // 'pendiente', 'pagado', 'vencido', 'parcial'
  
  final DateTime? ultimoPagoFecha;
  final double? ultimoPagoMonto;
  
  final bool sincronizado;
  final bool archivado;

  Fiado({
    required this.id,
    required this.pulperiaId,
    required this.clienteId,
    this.registroVentaId,
    required this.montoOriginal,
    required this.saldoPendiente,
    List<Map<String, dynamic>>? pagos,
    required this.fechaFiado,
    this.fechaVencimiento,
    required this.estado,
    this.ultimoPagoFecha,
    this.ultimoPagoMonto,
    this.sincronizado = false,
    this.archivado = false,
  }) : pagos = pagos ?? [];

  factory Fiado.fromLocal(dynamic local) {
    return Fiado(
      id: local.id,
      pulperiaId: local.pulperiaId,
      clienteId: local.clienteId,
      registroVentaId: local.registroVentaId,
      montoOriginal: local.montoOriginal,
      saldoPendiente: local.saldoPendiente,
      pagos: _parsePagos(local.pagos),
      fechaFiado: local.fechaFiado,
      fechaVencimiento: local.fechaVencimiento,
      estado: local.estado,
      ultimoPagoFecha: local.ultimoPagoFecha,
      ultimoPagoMonto: local.ultimoPagoMonto,
      sincronizado: local.sincronizado,
      archivado: local.archivado,
    );
  }

  static List<Map<String, dynamic>> _parsePagos(String json) {
    // Parseo seguro de JSON array
    return []; // Simplificado
  }

  // Helpers
  bool get estaVencido {
    if (fechaVencimiento == null) return false;
    return DateTime.now().isAfter(fechaVencimiento!) && saldoPendiente > 0;
  }

  int? get diasVencido {
    if (!estaVencido || fechaVencimiento == null) return null;
    return DateTime.now().difference(fechaVencimiento!).inDays;
  }

  double get totalPagado => montoOriginal - saldoPendiente;
}