// lib/database/database.dart

import 'package:drift/drift.dart';
import 'package:drift/web.dart';
import 'dart:html' as html;
import 'dart:async';
import 'dart:indexed_db' as idb;

part 'database.g.dart';

// ============== TABLAS ==============

@DataClassName('ProductoLocal')
class Productos extends Table {
  TextColumn get id => text()();
  TextColumn get nombre => text()();
  TextColumn get categoria => text()();
  TextColumn get marca => text()();
  TextColumn get tipoMedida => text()();
  TextColumn get unidades => text()();
  BoolColumn get requierePeso => boolean().withDefault(const Constant(false))();
  BoolColumn get requiereInventarioDiario => boolean().withDefault(const Constant(false))();
  BoolColumn get activo => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)(); // AGREGADO
  
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('PulperiaLocal')
class Pulperias extends Table {
  TextColumn get id => text()();
  TextColumn get idPublico => text()();
  TextColumn get nombreNegocio => text().nullable()();
  TextColumn get nombreContacto => text()();
  TextColumn get telefono => text().nullable()();
  TextColumn get whatsapp => text().nullable()();
  TextColumn get zonaId => text()();
  TextColumn get direccionReferencia => text().nullable()();
  RealColumn get latApprox => real().nullable()();
  RealColumn get lngApprox => real().nullable()();
  TextColumn get tipoLocal => text().nullable()();
  BoolColumn get tieneBalanza => boolean().withDefault(const Constant(false))();
  BoolColumn get activa => boolean().withDefault(const Constant(true))();
  DateTimeColumn get fechaRegistro => dateTime().withDefault(currentDateAndTime)();
  TextColumn get userId => text().nullable()();
  
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ClienteFiadoLocal')
class ClientesFiado extends Table {
  TextColumn get id => text()();
  TextColumn get pulperiaId => text()();
  TextColumn get nombre => text()();
  TextColumn get apodo => text().nullable()();
  TextColumn get telefono => text().nullable()();
  RealColumn get limiteFiado => real().withDefault(const Constant(1000))();
  RealColumn get saldoActual => real().withDefault(const Constant(0))();
  TextColumn get estado => text().withDefault(const Constant('activo'))();
  IntColumn get nivelConfianza => integer().withDefault(const Constant(3))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('RegistroLocal')
class Registros extends Table {
  TextColumn get id => text()();
  TextColumn get pulperiaId => text()();
  TextColumn get productoId => text().nullable()();
  TextColumn get tipo => text()();
  
  RealColumn get cantidad => real().nullable()();
  RealColumn get unidadPrincipal => real().nullable()();
  RealColumn get unidadSecundaria => real().nullable()();
  
  RealColumn get precioCosto => real().nullable()();
  RealColumn get precioVenta => real().nullable()();
  
  DateTimeColumn get fechaHora => dateTime()();
  BoolColumn get esCorte => boolean().withDefault(const Constant(false))();
  IntColumn get numeroCorte => integer().withDefault(const Constant(1))();
  
  TextColumn get contexto => text().withDefault(const Constant('{}'))();
  
  BoolColumn get sincronizado => boolean().withDefault(const Constant(false))();
  DateTimeColumn get fechaSincronizacion => dateTime().nullable()();
  TextColumn get errorSync => text().nullable()();
  
  RealColumn get gpsLat => real().nullable()();
  RealColumn get gpsLng => real().nullable()();
  
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('FiadoLocal')
class Fiados extends Table {
  TextColumn get id => text()();
  TextColumn get pulperiaId => text()();
  TextColumn get clienteId => text()();
  TextColumn get registroVentaId => text().nullable()();
  
  RealColumn get montoOriginal => real()();
  RealColumn get saldoPendiente => real()();
  TextColumn get pagos => text().withDefault(const Constant('[]'))();
  
  DateTimeColumn get fechaFiado => dateTime()();
  DateTimeColumn get fechaVencimiento => dateTime().nullable()();
  TextColumn get estado => text().withDefault(const Constant('pendiente'))();
  
  DateTimeColumn get ultimoPagoFecha => dateTime().nullable()();
  RealColumn get ultimoPagoMonto => real().nullable()();
  
  BoolColumn get sincronizado => boolean().withDefault(const Constant(false))();
  BoolColumn get archivado => boolean().withDefault(const Constant(false))();
  
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  
  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ResumenMensualLocal')
class ResumenMensual extends Table {
  TextColumn get id => text()();
  TextColumn get pulperiaId => text()();
  IntColumn get anio => integer()();
  IntColumn get mes => integer()();
  
  RealColumn get totalVentas => real().withDefault(const Constant(0))();
  RealColumn get totalVentasContado => real().withDefault(const Constant(0))();
  RealColumn get totalVentasCredito => real().withDefault(const Constant(0))();
  RealColumn get totalCostos => real().withDefault(const Constant(0))();
  RealColumn get gananciaEstimada => real().withDefault(const Constant(0))();
  
  TextColumn get ventasPorCategoria => text().withDefault(const Constant('{}'))();
  
  IntColumn get totalTransacciones => integer().withDefault(const Constant(0))();
  RealColumn get promedioVentaDiaria => real().withDefault(const Constant(0))();
  IntColumn get diasActivos => integer().withDefault(const Constant(0))();
  
  RealColumn get creditosPendientesCierre => real().withDefault(const Constant(0))();
  IntColumn get cantidadCreditosPendientes => integer().withDefault(const Constant(0))();
  
  BoolColumn get datosCompletos => boolean().withDefault(const Constant(false))();
  DateTimeColumn get generadoEl => dateTime().withDefault(currentDateAndTime)();
  
  @override
  Set<Column> get primaryKey => {id};
}

// ============== CONFIGURACIÓN PARA CHROME WEB ==============

/// Clase helper para manejar la persistencia en Chrome
class ChromeStorageHelper {
  static const String _dbName = 'mi_pulperia_db';
  
  /// Solicita persistencia de almacenamiento en Chrome
  static Future<bool> requestPersistentStorage() async {
    try {
      final storage = html.window.navigator.storage;
      if (storage != null) {
        // Verificar si ya es persistente
        final persisted = await storage.persisted();
        if (!persisted) {
          final granted = await storage.persist();
          print('Persistencia solicitada: $granted');
          return granted;
        }
        return true;
      }
    } catch (e) {
      print('Error solicitando persistencia: $e');
    }
    return false;
  }
  
  /// Verifica el espacio de almacenamiento disponible
  static Future<Map<String, dynamic>> getStorageInfo() async {
    try {
      final storage = html.window.navigator.storage;
      if (storage != null) {
        final estimate = await storage.estimate();
        if (estimate != null) {
          // La API devuelve un objeto StorageEstimate con usage y quota
          final jsEstimate = estimate as dynamic;
          return {
            'usage': jsEstimate.usage ?? 0,
            'quota': jsEstimate.quota ?? 0,
          };
        }
      }
    } catch (e) {
      print('Error obteniendo info de almacenamiento: $e');
    }
    return {'usage': 0, 'quota': 0};
  }
  
  /// Limpia caché antigua si es necesario
  static Future<void> clearOldCache() async {
    try {
      final caches = html.window.caches;
      if (caches != null) {
        final cacheNames = await caches.keys();
        for (final name in cacheNames) {
          if (name.toString().contains('flutter') || 
              name.toString().contains('drift')) {
            await caches.delete(name);
            print('Cache eliminada: $name');
          }
        }
      }
    } catch (e) {
      print('Error limpiando cache: $e');
    }
  }
}

/// Manejador de sincronización entre pestañas para Chrome
class TabSyncManager {
  html.BroadcastChannel? _channel;
  final _controller = StreamController<Map<String, dynamic>>.broadcast();
  
  Stream<Map<String, dynamic>> get onMessage => _controller.stream;
  
  void initialize() {
    try {
      _channel = html.BroadcastChannel('mi_pulperia_sync');
      _channel!.onMessage.listen((event) {
        final data = event.data;
        if (data is Map) {
          _controller.add(Map<String, dynamic>.from(data));
        }
      });
    } catch (e) {
      print('BroadcastChannel no soportado: $e');
    }
  }
  
  void notifyChange(String table, String operation, String id) {
    try {
      _channel?.postMessage({
        'table': table,
        'operation': operation,
        'id': id,
        'timestamp': DateTime.now().toIso8601String(),
      });
    } catch (e) {
      print('Error notificando cambio: $e');
    }
  }
  
  void dispose() {
    _channel?.close();
    _controller.close();
  }
}

// ============== DATABASE OPTIMIZADA PARA CHROME WEB ==============

@DriftDatabase(tables: [
  Productos,
  Pulperias,
  ClientesFiado,
  Registros,
  Fiados,
  ResumenMensual,
])
class AppDatabase extends _$AppDatabase {
  static AppDatabase? _instance;
  final TabSyncManager _syncManager = TabSyncManager();
  bool _initialized = false;
  
  /// Factory para singleton con manejo de inicialización
  factory AppDatabase() {
    _instance ??= AppDatabase._internal();
    return _instance!;
  }
  
  AppDatabase._internal() : super(_createWebDatabase());

  @override
  int get schemaVersion => 1;

  /// Crea la configuración de base de datos optimizada para Chrome
  static DatabaseConnection _createWebDatabase() {
    // WebDatabase simple sin parámetros extra
    final webDatabase = WebDatabase('mi_pulperia_db');
    
    return DatabaseConnection(webDatabase);
  }

  /// Inicialización completa con verificaciones de Chrome
  Future<void> initialize() async {
    if (_initialized) return;
    
    try {
      // 1. Solicitar persistencia de almacenamiento
      await ChromeStorageHelper.requestPersistentStorage();
      
      // 2. Inicializar sincronización entre pestañas
      _syncManager.initialize();
      _syncManager.onMessage.listen(_handleTabSyncMessage);
      
      // 3. Verificar integridad de la base de datos
      await _verifyDatabaseIntegrity();
      
      _initialized = true;
      print('Base de datos inicializada correctamente en Chrome');
    } catch (e, stackTrace) {
      print('Error inicializando base de datos: $e');
      print(stackTrace);
      rethrow;
    }
  }
  
  /// Verifica que las tablas existan y estén accesibles
  Future<void> _verifyDatabaseIntegrity() async {
    try {
      // Verificar acceso a cada tabla
      await select(productos).get();
      await select(pulperias).get();
      await select(clientesFiado).get();
      await select(registros).get();
      await select(fiados).get();
      await select(resumenMensual).get();
    } catch (e) {
      print('Error de integridad: $e');
      // Intentar recrear la base de datos si hay corrupción
      await _handleCorruption();
    }
  }
  
  /// Maneja corrupción de base de datos
  Future<void> _handleCorruption() async {
    try {
      // Eliminar IndexedDB manualmente
      await html.window.indexedDB?.deleteDatabase('mi_pulperia_db');
      print('Base de datos corrupta eliminada, se recreará');
    } catch (e) {
      print('Error manejando corrupción: $e');
    }
  }
  
  /// Maneja mensajes de otras pestañas
  void _handleTabSyncMessage(Map<String, dynamic> message) {
    print('Cambio detectado en otra pestaña: $message');
  }

  // ============== MÉTODOS CRUD ==============

  Future<List<ProductoLocal>> getProductosActivos() async {
    return (select(productos)..where((p) => p.activo.equals(true))).get();
  }

  Future<List<ProductoLocal>> getProductosPorCategoria(String categoria) async {
    return (select(productos)
      ..where((p) => p.categoria.equals(categoria) & p.activo.equals(true)))
      .get();
  }

  Future<ProductoLocal?> getProductoPorId(String id) async {
    return (select(productos)..where((p) => p.id.equals(id))).getSingleOrNull();
  }

  Future<void> insertarProducto(ProductosCompanion producto) async {
    await into(productos).insertOnConflictUpdate(producto);
    _syncManager.notifyChange('productos', 'insert', producto.id.value);
  }

  Future<DateTime?> getUltimaSyncProductos() async {
    final query = select(productos)
      ..orderBy([(p) => OrderingTerm(expression: p.createdAt, mode: OrderingMode.desc)])
      ..limit(1);
    final result = await query.getSingleOrNull();
    return result?.createdAt;
  }

  Future<PulperiaLocal?> getPulperiaPorUserId(String userId) async {
    return (select(pulperias)..where((p) => p.userId.equals(userId))).getSingleOrNull();
  }

  Future<void> insertarPulperia(PulperiasCompanion pulperia) async {
    await into(pulperias).insert(pulperia);
    _syncManager.notifyChange('pulperias', 'insert', pulperia.id.value);
  }

  Future<int> guardarRegistro(RegistrosCompanion registro) async {
    final id = await into(registros).insert(registro);
    _syncManager.notifyChange('registros', 'insert', registro.id.value);
    return id;
  }

  Future<List<RegistroLocal>> getRegistrosHoy(String pulperiaId) async {
    final hoy = DateTime.now();
    final inicioDia = DateTime(hoy.year, hoy.month, hoy.day);
    final finDia = inicioDia.add(const Duration(days: 1));

    return (select(registros)
      ..where((r) =>
          r.pulperiaId.equals(pulperiaId) &
          r.fechaHora.isBetweenValues(inicioDia, finDia))
      ..orderBy([(r) => OrderingTerm(expression: r.fechaHora, mode: OrderingMode.desc)]))
      .get();
  }

  Future<List<RegistroLocal>> getRegistrosPendientesSync() async {
    return (select(registros)
      ..where((r) => r.sincronizado.equals(false))
      ..orderBy([(r) => OrderingTerm(expression: r.fechaHora)]))
      .get();
  }

  Future<void> marcarRegistroSincronizado(String id) async {
    await (update(registros)..where((r) => r.id.equals(id))).write(
      RegistrosCompanion(
        sincronizado: const Value(true),
        fechaSincronizacion: Value(DateTime.now()),
      ),
    );
    _syncManager.notifyChange('registros', 'update', id);
  }

  Future<void> marcarErrorSync(String id, String error) async {
    await (update(registros)..where((r) => r.id.equals(id))).write(
      RegistrosCompanion(errorSync: Value(error)),
    );
  }

  Future<Map<String, dynamic>> getResumenDia(String pulperiaId) async {
    final registrosHoy = await getRegistrosHoy(pulperiaId);
    
    double totalVentas = 0;
    double totalContado = 0;
    double totalCredito = 0;
    double totalCosto = 0;
    int cantidadTransacciones = 0;

    for (final reg in registrosHoy) {
      if (reg.tipo == 'venta') {
        final monto = (reg.precioVenta ?? 0) * (reg.cantidad ?? 0);
        totalVentas += monto;
        cantidadTransacciones++;

        final esCredito = reg.contexto.contains('"es_credito":true');
        
        if (esCredito) {
          totalCredito += monto;
        } else {
          totalContado += monto;
        }

        totalCosto += (reg.precioCosto ?? 0) * (reg.cantidad ?? 0);
      }
    }

    return {
      'totalVentas': totalVentas,
      'totalContado': totalContado,
      'totalCredito': totalCredito,
      'gananciaEstimada': totalVentas - totalCosto,
      'cantidadTransacciones': cantidadTransacciones,
    };
  }

  Future<List<FiadoLocal>> getFiadosPendientes(String pulperiaId) async {
    return (select(fiados)
      ..where((f) =>
          f.pulperiaId.equals(pulperiaId) &
          f.estado.isIn(['pendiente', 'parcial']) &
          f.archivado.equals(false))
      ..orderBy([(f) => OrderingTerm(expression: f.fechaVencimiento)]))
      .get();
  }

  Future<double> getTotalCarteraPendiente(String pulperiaId) async {
    final fiadosList = await getFiadosPendientes(pulperiaId);
    return fiadosList.fold<double>(0, (sum, f) => sum + f.saldoPendiente);
  }

  Future<int> getCantidadFiadosVencidos(String pulperiaId) async {
    final hoy = DateTime.now();
    final fiadosList = await (select(fiados)
      ..where((f) =>
          f.pulperiaId.equals(pulperiaId) &
          f.estado.isIn(['pendiente', 'parcial']) &
          f.fechaVencimiento.isSmallerThanValue(hoy)))
      .get();
    return fiadosList.length;
  }

  Future<void> insertarFiado(FiadosCompanion fiado) async {
    await into(fiados).insert(fiado);
    _syncManager.notifyChange('fiados', 'insert', fiado.id.value);
  }

  Future<FiadoLocal?> getFiadoPorId(String id) async {
    return (select(fiados)..where((f) => f.id.equals(id))).getSingleOrNull();
  }

  Future<void> actualizarFiado(String id, FiadosCompanion fiado) async {
    await (update(fiados)..where((f) => f.id.equals(id))).write(fiado);
    _syncManager.notifyChange('fiados', 'update', id);
  }

  Future<List<ClienteFiadoLocal>> getClientesActivos(String pulperiaId) async {
    return (select(clientesFiado)
      ..where((c) => c.pulperiaId.equals(pulperiaId) & c.estado.equals('activo'))
      ..orderBy([(c) => OrderingTerm(expression: c.nombre)]))
      .get();
  }

  Future<void> actualizarSaldoCliente(String clienteId, double monto) async {
    final cliente = await (select(clientesFiado)
      ..where((c) => c.id.equals(clienteId)))
      .getSingle();
    
    final nuevoSaldo = cliente.saldoActual + monto;
    
    await (update(clientesFiado)
      ..where((c) => c.id.equals(clienteId)))
      .write(ClientesFiadoCompanion(saldoActual: Value(nuevoSaldo)));
    
    _syncManager.notifyChange('clientesFiado', 'update', clienteId);
  }

  Future<bool> existeResumen(int anio, int mes) async {
    final result = await (select(resumenMensual)
      ..where((r) => r.anio.equals(anio) & r.mes.equals(mes)))
      .getSingleOrNull();
    return result != null;
  }

  Future<void> generarResumenMensual(String pulperiaId, int anio, int mes) async {
    final inicioMes = DateTime(anio, mes, 1);
    final finMes = DateTime(anio, mes + 1, 0);

    final ventasMes = await (select(registros)
      ..where((r) => 
        r.pulperiaId.equals(pulperiaId) & 
        r.tipo.equals('venta') &
        r.fechaHora.isBetweenValues(inicioMes, finMes))
      ).get();

    double totalVentas = 0;
    for (final v in ventasMes) {
      totalVentas += (v.precioVenta ?? 0) * (v.cantidad ?? 0);
    }

    await into(resumenMensual).insert(
      ResumenMensualCompanion(
        id: Value('${pulperiaId}_${anio}_$mes'),
        pulperiaId: Value(pulperiaId),
        anio: Value(anio),
        mes: Value(mes),
        totalVentas: Value(totalVentas),
        totalTransacciones: Value(ventasMes.length),
      ),
      mode: InsertMode.replace,
    );
    
    _syncManager.notifyChange('resumenMensual', 'insert', '${pulperiaId}_${anio}_$mes');
  }

  // ============== MÉTODOS ADICIONALES PARA CHROME ==============

  /// Obtiene información de almacenamiento disponible
  Future<Map<String, dynamic>> getStorageInfo() async {
    return await ChromeStorageHelper.getStorageInfo();
  }

  /// Limpia datos antiguos y optimiza espacio
  Future<void> optimizeStorage() async {
    try {
      final fechaLimite = DateTime.now().subtract(const Duration(days: 30));
      
      final registrosAntiguos = await (select(registros)
        ..where((r) => 
          r.sincronizado.equals(true) & 
          r.fechaHora.isSmallerThanValue(fechaLimite)))
        .get();
      
      for (final reg in registrosAntiguos) {
        await (delete(registros)..where((r) => r.id.equals(reg.id))).go();
      }
      
      print('Optimización completada: ${registrosAntiguos.length} registros eliminados');
    } catch (e) {
      print('Error optimizando almacenamiento: $e');
    }
  }

  /// Cierra la base de datos limpiamente
  @override
  Future<void> close() async {
    _syncManager.dispose();
    await super.close();
    _instance = null;
    _initialized = false;
  }
}