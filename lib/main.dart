import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:intl/intl.dart'; // AGREGAR
import 'package:intl/date_symbol_data_local.dart'; // AGREGAR
import 'database/database.dart';
import 'providers/app_state.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // INICIALIZAR INTL - AGREGAR ESTO
  await initializeDateFormatting('es_ES', null);
  
  // Inicializar Supabase
  await Supabase.initialize(
    url: 'https://qczypoiywwannxgqetit.supabase.co',
    anonKey: 'sb_publishable_zLoi2Eec1QQS59n_lKQDHg_0OLAWedo',
  );
  
  // Inicializar base de datos
  final db = AppDatabase();
  await db.initialize();
  
  runApp(
    const ProviderScope(
      child: MiPulperiaApp(),
    ),
  );
}