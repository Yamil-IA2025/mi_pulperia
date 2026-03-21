// lib/utils/constantes.dart

class Constantes {
  // Precios
  static const double precioBasico = 199.0; // C$
  static const double precioPro = 499.0;
  static const double precioPremium = 899.0;
  
  // Límites gratis
  static const int limiteProductosGratis = 50;
  static const int limiteFiadosGratis = 3;
  
  // Zonas predefinidas (Rivas)
  static const List<Map<String, String>> zonasRivas = [
    {'id': 'rivas_centro', 'nombre': 'Rivas Centro'},
    {'id': 'san_jorge', 'nombre': 'San Jorge'},
    {'id': 'san_juan_sur', 'nombre': 'San Juan del Sur'},
    {'id': 'mercado_municipal', 'nombre': 'Mercado Municipal'},
    {'id': 'barrio_sandino', 'nombre': 'Barrio Sandino'},
    {'id': 'barrio_monimbo', 'nombre': 'Barrio Monimbó'},
    {'id': 'la_virgen', 'nombre': 'La Virgen'},
    {'id': 'moyogalpa', 'nombre': 'Moyogalpa (Ometepe)'},
  ];
  
  // Categorías de productos
  static const List<String> categorias = [
    'arroz',
    'frijol',
    'maiz',
    'aceite',
    'cerveza',
    'gaseosa',
    'huevos',
    'pollo',
    'azucar',
    'sal',
    'jabon',
    'leche',
    'otros',
  ];
}