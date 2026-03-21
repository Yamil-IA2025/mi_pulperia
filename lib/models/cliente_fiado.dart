// lib/models/cliente_fiado.dart

class ClienteFiado {
  final String id;
  final String pulperiaId;
  final String nombre;
  final String? apodo;
  final String? telefono;
  
  final double limiteFiado;
  final double saldoActual;
  final String estado; // 'activo', 'moroso', 'bloqueado'
  final int nivelConfianza; // 1-5

  ClienteFiado({
    required this.id,
    required this.pulperiaId,
    required this.nombre,
    this.apodo,
    this.telefono,
    this.limiteFiado = 1000,
    this.saldoActual = 0,
    this.estado = 'activo',
    this.nivelConfianza = 3,
  });

  factory ClienteFiado.fromLocal(dynamic local) {
    return ClienteFiado(
      id: local.id,
      pulperiaId: local.pulperiaId,
      nombre: local.nombre,
      apodo: local.apodo,
      telefono: local.telefono,
      limiteFiado: local.limiteFiado,
      saldoActual: local.saldoActual,
      estado: local.estado,
      nivelConfianza: local.nivelConfianza,
    );
  }

  String get nombreDisplay => apodo?.isNotEmpty == true ? '$nombre ($apodo)' : nombre;
  
  bool get puedeFiar => estado == 'activo' && saldoActual < limiteFiado;
  
  double get disponibleParaFiar => limiteFiado - saldoActual;
}