// lib/utils/formatos.dart

import 'package:intl/intl.dart';

class Formatos {
  // Moneda Nicaragüense (Córdobas)
  static final _currencyFormat = NumberFormat.currency(
    locale: 'es_NI',
    symbol: 'C\$ ',
    decimalDigits: 2,
  );
  
  static final _numberFormat = NumberFormat('#,##0.##', 'es_NI');
  static final _dateFormat = DateFormat('EEEE d MMM, yyyy', 'es_NI');
  static final _dateTimeFormat = DateFormat('d/M/yyyy HH:mm', 'es_NI');
  static final _timeFormat = DateFormat('HH:mm', 'es_NI');

  static String moneda(double valor) {
    return _currencyFormat.format(valor);
  }

  static String numero(double valor, {int decimales = 2}) {
    if (decimales == 0) return NumberFormat('#,##0', 'es_NI').format(valor);
    return NumberFormat('#,##0.${'0' * decimales}', 'es_NI').format(valor);
  }

  static String fecha(DateTime fecha) {
    return _dateFormat.format(fecha);
  }

  static String fechaCorta(DateTime fecha) {
    return DateFormat('d/M/yyyy', 'es_NI').format(fecha);
  }

  static String hora(DateTime fecha) {
    return _timeFormat.format(fecha);
  }

  static String fechaHora(DateTime fecha) {
    return _dateTimeFormat.format(fecha);
  }

  // Para mostrar cantidades con unidades (ej: "2 qq 60 lb")
  static String cantidadDual({
    required double? principal,
    required double? secundaria,
    required String unidadPrincipal,
    required String? unidadSecundaria,
    int decimalesPrincipal = 0,
    int decimalesSecundaria = 0,
  }) {
    final buffer = StringBuffer();
    
    if (principal != null && principal > 0) {
      buffer.write('${numero(principal, decimales: decimalesPrincipal)} $unidadPrincipal');
    }
    
    if (secundaria != null && secundaria > 0 && unidadSecundaria != null) {
      if (buffer.isNotEmpty) buffer.write(' ');
      buffer.write('${numero(secundaria, decimales: decimalesSecundaria)} $unidadSecundaria');
    }
    
    return buffer.toString().trim();
  }

  // Días relativos
  static String diasRelativo(DateTime fecha) {
    final hoy = DateTime.now();
    final diferencia = fecha.difference(hoy).inDays;
    
    if (diferencia == 0) return 'Hoy';
    if (diferencia == 1) return 'Mañana';
    if (diferencia == -1) return 'Ayer';
    if (diferencia > 1 && diferencia < 7) return 'En $diferencia días';
    if (diferencia < -1 && diferencia > -7) return 'Hace ${diferencia.abs()} días';
    
    return fechaCorta(fecha);
  }
}