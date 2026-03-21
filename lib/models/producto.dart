// lib/models/producto.dart

class Producto {
  final String id;
  final String nombre;
  final String categoria;
  final String marca;
  final String tipoMedida; // 'peso', 'volumen', 'unidad'
  final Map<String, dynamic> unidades;
  final bool requierePeso;
  final bool requiereInventarioDiario;
  final bool activo;

  Producto({
    required this.id,
    required this.nombre,
    required this.categoria,
    required this.marca,
    required this.tipoMedida,
    required this.unidades,
    this.requierePeso = false,
    this.requiereInventarioDiario = false,
    this.activo = true,
  });

  factory Producto.fromJson(Map<String, dynamic> json) {
    return Producto(
      id: json['id'],
      nombre: json['nombre'],
      categoria: json['categoria'],
      marca: json['marca'],
      tipoMedida: json['tipo_medida'],
      unidades: json['unidades'],
      requierePeso: json['requiere_peso'] ?? false,
      requiereInventarioDiario: json['requiere_inventario_diario'] ?? false,
      activo: json['activo'] ?? true,
    );
  }

  // Helper para mostrar unidades en UI
  String get unidadPrincipalStr => unidades['principal'] ?? '';
  String get unidadSecundariaStr => unidades['secundaria'] ?? '';
  
  bool get tieneDosUnidades => unidadSecundariaStr.isNotEmpty;
}