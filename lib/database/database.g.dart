// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ProductosTable extends Productos
    with TableInfo<$ProductosTable, ProductoLocal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
      'nombre', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoriaMeta =
      const VerificationMeta('categoria');
  @override
  late final GeneratedColumn<String> categoria = GeneratedColumn<String>(
      'categoria', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _marcaMeta = const VerificationMeta('marca');
  @override
  late final GeneratedColumn<String> marca = GeneratedColumn<String>(
      'marca', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tipoMedidaMeta =
      const VerificationMeta('tipoMedida');
  @override
  late final GeneratedColumn<String> tipoMedida = GeneratedColumn<String>(
      'tipo_medida', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _unidadesMeta =
      const VerificationMeta('unidades');
  @override
  late final GeneratedColumn<String> unidades = GeneratedColumn<String>(
      'unidades', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _requierePesoMeta =
      const VerificationMeta('requierePeso');
  @override
  late final GeneratedColumn<bool> requierePeso = GeneratedColumn<bool>(
      'requiere_peso', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("requiere_peso" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _requiereInventarioDiarioMeta =
      const VerificationMeta('requiereInventarioDiario');
  @override
  late final GeneratedColumn<bool> requiereInventarioDiario =
      GeneratedColumn<bool>(
          'requiere_inventario_diario', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("requiere_inventario_diario" IN (0, 1))'),
          defaultValue: const Constant(false));
  static const VerificationMeta _activoMeta = const VerificationMeta('activo');
  @override
  late final GeneratedColumn<bool> activo = GeneratedColumn<bool>(
      'activo', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("activo" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        nombre,
        categoria,
        marca,
        tipoMedida,
        unidades,
        requierePeso,
        requiereInventarioDiario,
        activo,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'productos';
  @override
  VerificationContext validateIntegrity(Insertable<ProductoLocal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre']!, _nombreMeta));
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    if (data.containsKey('categoria')) {
      context.handle(_categoriaMeta,
          categoria.isAcceptableOrUnknown(data['categoria']!, _categoriaMeta));
    } else if (isInserting) {
      context.missing(_categoriaMeta);
    }
    if (data.containsKey('marca')) {
      context.handle(
          _marcaMeta, marca.isAcceptableOrUnknown(data['marca']!, _marcaMeta));
    } else if (isInserting) {
      context.missing(_marcaMeta);
    }
    if (data.containsKey('tipo_medida')) {
      context.handle(
          _tipoMedidaMeta,
          tipoMedida.isAcceptableOrUnknown(
              data['tipo_medida']!, _tipoMedidaMeta));
    } else if (isInserting) {
      context.missing(_tipoMedidaMeta);
    }
    if (data.containsKey('unidades')) {
      context.handle(_unidadesMeta,
          unidades.isAcceptableOrUnknown(data['unidades']!, _unidadesMeta));
    } else if (isInserting) {
      context.missing(_unidadesMeta);
    }
    if (data.containsKey('requiere_peso')) {
      context.handle(
          _requierePesoMeta,
          requierePeso.isAcceptableOrUnknown(
              data['requiere_peso']!, _requierePesoMeta));
    }
    if (data.containsKey('requiere_inventario_diario')) {
      context.handle(
          _requiereInventarioDiarioMeta,
          requiereInventarioDiario.isAcceptableOrUnknown(
              data['requiere_inventario_diario']!,
              _requiereInventarioDiarioMeta));
    }
    if (data.containsKey('activo')) {
      context.handle(_activoMeta,
          activo.isAcceptableOrUnknown(data['activo']!, _activoMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductoLocal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductoLocal(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      nombre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nombre'])!,
      categoria: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}categoria'])!,
      marca: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}marca'])!,
      tipoMedida: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tipo_medida'])!,
      unidades: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unidades'])!,
      requierePeso: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}requiere_peso'])!,
      requiereInventarioDiario: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}requiere_inventario_diario'])!,
      activo: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}activo'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ProductosTable createAlias(String alias) {
    return $ProductosTable(attachedDatabase, alias);
  }
}

class ProductoLocal extends DataClass implements Insertable<ProductoLocal> {
  final String id;
  final String nombre;
  final String categoria;
  final String marca;
  final String tipoMedida;
  final String unidades;
  final bool requierePeso;
  final bool requiereInventarioDiario;
  final bool activo;
  final DateTime createdAt;
  const ProductoLocal(
      {required this.id,
      required this.nombre,
      required this.categoria,
      required this.marca,
      required this.tipoMedida,
      required this.unidades,
      required this.requierePeso,
      required this.requiereInventarioDiario,
      required this.activo,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['nombre'] = Variable<String>(nombre);
    map['categoria'] = Variable<String>(categoria);
    map['marca'] = Variable<String>(marca);
    map['tipo_medida'] = Variable<String>(tipoMedida);
    map['unidades'] = Variable<String>(unidades);
    map['requiere_peso'] = Variable<bool>(requierePeso);
    map['requiere_inventario_diario'] =
        Variable<bool>(requiereInventarioDiario);
    map['activo'] = Variable<bool>(activo);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ProductosCompanion toCompanion(bool nullToAbsent) {
    return ProductosCompanion(
      id: Value(id),
      nombre: Value(nombre),
      categoria: Value(categoria),
      marca: Value(marca),
      tipoMedida: Value(tipoMedida),
      unidades: Value(unidades),
      requierePeso: Value(requierePeso),
      requiereInventarioDiario: Value(requiereInventarioDiario),
      activo: Value(activo),
      createdAt: Value(createdAt),
    );
  }

  factory ProductoLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductoLocal(
      id: serializer.fromJson<String>(json['id']),
      nombre: serializer.fromJson<String>(json['nombre']),
      categoria: serializer.fromJson<String>(json['categoria']),
      marca: serializer.fromJson<String>(json['marca']),
      tipoMedida: serializer.fromJson<String>(json['tipoMedida']),
      unidades: serializer.fromJson<String>(json['unidades']),
      requierePeso: serializer.fromJson<bool>(json['requierePeso']),
      requiereInventarioDiario:
          serializer.fromJson<bool>(json['requiereInventarioDiario']),
      activo: serializer.fromJson<bool>(json['activo']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'nombre': serializer.toJson<String>(nombre),
      'categoria': serializer.toJson<String>(categoria),
      'marca': serializer.toJson<String>(marca),
      'tipoMedida': serializer.toJson<String>(tipoMedida),
      'unidades': serializer.toJson<String>(unidades),
      'requierePeso': serializer.toJson<bool>(requierePeso),
      'requiereInventarioDiario':
          serializer.toJson<bool>(requiereInventarioDiario),
      'activo': serializer.toJson<bool>(activo),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ProductoLocal copyWith(
          {String? id,
          String? nombre,
          String? categoria,
          String? marca,
          String? tipoMedida,
          String? unidades,
          bool? requierePeso,
          bool? requiereInventarioDiario,
          bool? activo,
          DateTime? createdAt}) =>
      ProductoLocal(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        categoria: categoria ?? this.categoria,
        marca: marca ?? this.marca,
        tipoMedida: tipoMedida ?? this.tipoMedida,
        unidades: unidades ?? this.unidades,
        requierePeso: requierePeso ?? this.requierePeso,
        requiereInventarioDiario:
            requiereInventarioDiario ?? this.requiereInventarioDiario,
        activo: activo ?? this.activo,
        createdAt: createdAt ?? this.createdAt,
      );
  ProductoLocal copyWithCompanion(ProductosCompanion data) {
    return ProductoLocal(
      id: data.id.present ? data.id.value : this.id,
      nombre: data.nombre.present ? data.nombre.value : this.nombre,
      categoria: data.categoria.present ? data.categoria.value : this.categoria,
      marca: data.marca.present ? data.marca.value : this.marca,
      tipoMedida:
          data.tipoMedida.present ? data.tipoMedida.value : this.tipoMedida,
      unidades: data.unidades.present ? data.unidades.value : this.unidades,
      requierePeso: data.requierePeso.present
          ? data.requierePeso.value
          : this.requierePeso,
      requiereInventarioDiario: data.requiereInventarioDiario.present
          ? data.requiereInventarioDiario.value
          : this.requiereInventarioDiario,
      activo: data.activo.present ? data.activo.value : this.activo,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductoLocal(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('categoria: $categoria, ')
          ..write('marca: $marca, ')
          ..write('tipoMedida: $tipoMedida, ')
          ..write('unidades: $unidades, ')
          ..write('requierePeso: $requierePeso, ')
          ..write('requiereInventarioDiario: $requiereInventarioDiario, ')
          ..write('activo: $activo, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nombre, categoria, marca, tipoMedida,
      unidades, requierePeso, requiereInventarioDiario, activo, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductoLocal &&
          other.id == this.id &&
          other.nombre == this.nombre &&
          other.categoria == this.categoria &&
          other.marca == this.marca &&
          other.tipoMedida == this.tipoMedida &&
          other.unidades == this.unidades &&
          other.requierePeso == this.requierePeso &&
          other.requiereInventarioDiario == this.requiereInventarioDiario &&
          other.activo == this.activo &&
          other.createdAt == this.createdAt);
}

class ProductosCompanion extends UpdateCompanion<ProductoLocal> {
  final Value<String> id;
  final Value<String> nombre;
  final Value<String> categoria;
  final Value<String> marca;
  final Value<String> tipoMedida;
  final Value<String> unidades;
  final Value<bool> requierePeso;
  final Value<bool> requiereInventarioDiario;
  final Value<bool> activo;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const ProductosCompanion({
    this.id = const Value.absent(),
    this.nombre = const Value.absent(),
    this.categoria = const Value.absent(),
    this.marca = const Value.absent(),
    this.tipoMedida = const Value.absent(),
    this.unidades = const Value.absent(),
    this.requierePeso = const Value.absent(),
    this.requiereInventarioDiario = const Value.absent(),
    this.activo = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductosCompanion.insert({
    required String id,
    required String nombre,
    required String categoria,
    required String marca,
    required String tipoMedida,
    required String unidades,
    this.requierePeso = const Value.absent(),
    this.requiereInventarioDiario = const Value.absent(),
    this.activo = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        nombre = Value(nombre),
        categoria = Value(categoria),
        marca = Value(marca),
        tipoMedida = Value(tipoMedida),
        unidades = Value(unidades);
  static Insertable<ProductoLocal> custom({
    Expression<String>? id,
    Expression<String>? nombre,
    Expression<String>? categoria,
    Expression<String>? marca,
    Expression<String>? tipoMedida,
    Expression<String>? unidades,
    Expression<bool>? requierePeso,
    Expression<bool>? requiereInventarioDiario,
    Expression<bool>? activo,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nombre != null) 'nombre': nombre,
      if (categoria != null) 'categoria': categoria,
      if (marca != null) 'marca': marca,
      if (tipoMedida != null) 'tipo_medida': tipoMedida,
      if (unidades != null) 'unidades': unidades,
      if (requierePeso != null) 'requiere_peso': requierePeso,
      if (requiereInventarioDiario != null)
        'requiere_inventario_diario': requiereInventarioDiario,
      if (activo != null) 'activo': activo,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductosCompanion copyWith(
      {Value<String>? id,
      Value<String>? nombre,
      Value<String>? categoria,
      Value<String>? marca,
      Value<String>? tipoMedida,
      Value<String>? unidades,
      Value<bool>? requierePeso,
      Value<bool>? requiereInventarioDiario,
      Value<bool>? activo,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return ProductosCompanion(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      categoria: categoria ?? this.categoria,
      marca: marca ?? this.marca,
      tipoMedida: tipoMedida ?? this.tipoMedida,
      unidades: unidades ?? this.unidades,
      requierePeso: requierePeso ?? this.requierePeso,
      requiereInventarioDiario:
          requiereInventarioDiario ?? this.requiereInventarioDiario,
      activo: activo ?? this.activo,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (categoria.present) {
      map['categoria'] = Variable<String>(categoria.value);
    }
    if (marca.present) {
      map['marca'] = Variable<String>(marca.value);
    }
    if (tipoMedida.present) {
      map['tipo_medida'] = Variable<String>(tipoMedida.value);
    }
    if (unidades.present) {
      map['unidades'] = Variable<String>(unidades.value);
    }
    if (requierePeso.present) {
      map['requiere_peso'] = Variable<bool>(requierePeso.value);
    }
    if (requiereInventarioDiario.present) {
      map['requiere_inventario_diario'] =
          Variable<bool>(requiereInventarioDiario.value);
    }
    if (activo.present) {
      map['activo'] = Variable<bool>(activo.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductosCompanion(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('categoria: $categoria, ')
          ..write('marca: $marca, ')
          ..write('tipoMedida: $tipoMedida, ')
          ..write('unidades: $unidades, ')
          ..write('requierePeso: $requierePeso, ')
          ..write('requiereInventarioDiario: $requiereInventarioDiario, ')
          ..write('activo: $activo, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PulperiasTable extends Pulperias
    with TableInfo<$PulperiasTable, PulperiaLocal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PulperiasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idPublicoMeta =
      const VerificationMeta('idPublico');
  @override
  late final GeneratedColumn<String> idPublico = GeneratedColumn<String>(
      'id_publico', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nombreNegocioMeta =
      const VerificationMeta('nombreNegocio');
  @override
  late final GeneratedColumn<String> nombreNegocio = GeneratedColumn<String>(
      'nombre_negocio', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nombreContactoMeta =
      const VerificationMeta('nombreContacto');
  @override
  late final GeneratedColumn<String> nombreContacto = GeneratedColumn<String>(
      'nombre_contacto', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _telefonoMeta =
      const VerificationMeta('telefono');
  @override
  late final GeneratedColumn<String> telefono = GeneratedColumn<String>(
      'telefono', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _whatsappMeta =
      const VerificationMeta('whatsapp');
  @override
  late final GeneratedColumn<String> whatsapp = GeneratedColumn<String>(
      'whatsapp', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _zonaIdMeta = const VerificationMeta('zonaId');
  @override
  late final GeneratedColumn<String> zonaId = GeneratedColumn<String>(
      'zona_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _direccionReferenciaMeta =
      const VerificationMeta('direccionReferencia');
  @override
  late final GeneratedColumn<String> direccionReferencia =
      GeneratedColumn<String>('direccion_referencia', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latApproxMeta =
      const VerificationMeta('latApprox');
  @override
  late final GeneratedColumn<double> latApprox = GeneratedColumn<double>(
      'lat_approx', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _lngApproxMeta =
      const VerificationMeta('lngApprox');
  @override
  late final GeneratedColumn<double> lngApprox = GeneratedColumn<double>(
      'lng_approx', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _tipoLocalMeta =
      const VerificationMeta('tipoLocal');
  @override
  late final GeneratedColumn<String> tipoLocal = GeneratedColumn<String>(
      'tipo_local', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tieneBalanzaMeta =
      const VerificationMeta('tieneBalanza');
  @override
  late final GeneratedColumn<bool> tieneBalanza = GeneratedColumn<bool>(
      'tiene_balanza', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("tiene_balanza" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _activaMeta = const VerificationMeta('activa');
  @override
  late final GeneratedColumn<bool> activa = GeneratedColumn<bool>(
      'activa', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("activa" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _fechaRegistroMeta =
      const VerificationMeta('fechaRegistro');
  @override
  late final GeneratedColumn<DateTime> fechaRegistro =
      GeneratedColumn<DateTime>('fecha_registro', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        idPublico,
        nombreNegocio,
        nombreContacto,
        telefono,
        whatsapp,
        zonaId,
        direccionReferencia,
        latApprox,
        lngApprox,
        tipoLocal,
        tieneBalanza,
        activa,
        fechaRegistro,
        userId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pulperias';
  @override
  VerificationContext validateIntegrity(Insertable<PulperiaLocal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('id_publico')) {
      context.handle(_idPublicoMeta,
          idPublico.isAcceptableOrUnknown(data['id_publico']!, _idPublicoMeta));
    } else if (isInserting) {
      context.missing(_idPublicoMeta);
    }
    if (data.containsKey('nombre_negocio')) {
      context.handle(
          _nombreNegocioMeta,
          nombreNegocio.isAcceptableOrUnknown(
              data['nombre_negocio']!, _nombreNegocioMeta));
    }
    if (data.containsKey('nombre_contacto')) {
      context.handle(
          _nombreContactoMeta,
          nombreContacto.isAcceptableOrUnknown(
              data['nombre_contacto']!, _nombreContactoMeta));
    } else if (isInserting) {
      context.missing(_nombreContactoMeta);
    }
    if (data.containsKey('telefono')) {
      context.handle(_telefonoMeta,
          telefono.isAcceptableOrUnknown(data['telefono']!, _telefonoMeta));
    }
    if (data.containsKey('whatsapp')) {
      context.handle(_whatsappMeta,
          whatsapp.isAcceptableOrUnknown(data['whatsapp']!, _whatsappMeta));
    }
    if (data.containsKey('zona_id')) {
      context.handle(_zonaIdMeta,
          zonaId.isAcceptableOrUnknown(data['zona_id']!, _zonaIdMeta));
    } else if (isInserting) {
      context.missing(_zonaIdMeta);
    }
    if (data.containsKey('direccion_referencia')) {
      context.handle(
          _direccionReferenciaMeta,
          direccionReferencia.isAcceptableOrUnknown(
              data['direccion_referencia']!, _direccionReferenciaMeta));
    }
    if (data.containsKey('lat_approx')) {
      context.handle(_latApproxMeta,
          latApprox.isAcceptableOrUnknown(data['lat_approx']!, _latApproxMeta));
    }
    if (data.containsKey('lng_approx')) {
      context.handle(_lngApproxMeta,
          lngApprox.isAcceptableOrUnknown(data['lng_approx']!, _lngApproxMeta));
    }
    if (data.containsKey('tipo_local')) {
      context.handle(_tipoLocalMeta,
          tipoLocal.isAcceptableOrUnknown(data['tipo_local']!, _tipoLocalMeta));
    }
    if (data.containsKey('tiene_balanza')) {
      context.handle(
          _tieneBalanzaMeta,
          tieneBalanza.isAcceptableOrUnknown(
              data['tiene_balanza']!, _tieneBalanzaMeta));
    }
    if (data.containsKey('activa')) {
      context.handle(_activaMeta,
          activa.isAcceptableOrUnknown(data['activa']!, _activaMeta));
    }
    if (data.containsKey('fecha_registro')) {
      context.handle(
          _fechaRegistroMeta,
          fechaRegistro.isAcceptableOrUnknown(
              data['fecha_registro']!, _fechaRegistroMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PulperiaLocal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PulperiaLocal(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      idPublico: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id_publico'])!,
      nombreNegocio: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nombre_negocio']),
      nombreContacto: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}nombre_contacto'])!,
      telefono: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}telefono']),
      whatsapp: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}whatsapp']),
      zonaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zona_id'])!,
      direccionReferencia: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}direccion_referencia']),
      latApprox: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}lat_approx']),
      lngApprox: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}lng_approx']),
      tipoLocal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tipo_local']),
      tieneBalanza: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}tiene_balanza'])!,
      activa: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}activa'])!,
      fechaRegistro: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}fecha_registro'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id']),
    );
  }

  @override
  $PulperiasTable createAlias(String alias) {
    return $PulperiasTable(attachedDatabase, alias);
  }
}

class PulperiaLocal extends DataClass implements Insertable<PulperiaLocal> {
  final String id;
  final String idPublico;
  final String? nombreNegocio;
  final String nombreContacto;
  final String? telefono;
  final String? whatsapp;
  final String zonaId;
  final String? direccionReferencia;
  final double? latApprox;
  final double? lngApprox;
  final String? tipoLocal;
  final bool tieneBalanza;
  final bool activa;
  final DateTime fechaRegistro;
  final String? userId;
  const PulperiaLocal(
      {required this.id,
      required this.idPublico,
      this.nombreNegocio,
      required this.nombreContacto,
      this.telefono,
      this.whatsapp,
      required this.zonaId,
      this.direccionReferencia,
      this.latApprox,
      this.lngApprox,
      this.tipoLocal,
      required this.tieneBalanza,
      required this.activa,
      required this.fechaRegistro,
      this.userId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['id_publico'] = Variable<String>(idPublico);
    if (!nullToAbsent || nombreNegocio != null) {
      map['nombre_negocio'] = Variable<String>(nombreNegocio);
    }
    map['nombre_contacto'] = Variable<String>(nombreContacto);
    if (!nullToAbsent || telefono != null) {
      map['telefono'] = Variable<String>(telefono);
    }
    if (!nullToAbsent || whatsapp != null) {
      map['whatsapp'] = Variable<String>(whatsapp);
    }
    map['zona_id'] = Variable<String>(zonaId);
    if (!nullToAbsent || direccionReferencia != null) {
      map['direccion_referencia'] = Variable<String>(direccionReferencia);
    }
    if (!nullToAbsent || latApprox != null) {
      map['lat_approx'] = Variable<double>(latApprox);
    }
    if (!nullToAbsent || lngApprox != null) {
      map['lng_approx'] = Variable<double>(lngApprox);
    }
    if (!nullToAbsent || tipoLocal != null) {
      map['tipo_local'] = Variable<String>(tipoLocal);
    }
    map['tiene_balanza'] = Variable<bool>(tieneBalanza);
    map['activa'] = Variable<bool>(activa);
    map['fecha_registro'] = Variable<DateTime>(fechaRegistro);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    return map;
  }

  PulperiasCompanion toCompanion(bool nullToAbsent) {
    return PulperiasCompanion(
      id: Value(id),
      idPublico: Value(idPublico),
      nombreNegocio: nombreNegocio == null && nullToAbsent
          ? const Value.absent()
          : Value(nombreNegocio),
      nombreContacto: Value(nombreContacto),
      telefono: telefono == null && nullToAbsent
          ? const Value.absent()
          : Value(telefono),
      whatsapp: whatsapp == null && nullToAbsent
          ? const Value.absent()
          : Value(whatsapp),
      zonaId: Value(zonaId),
      direccionReferencia: direccionReferencia == null && nullToAbsent
          ? const Value.absent()
          : Value(direccionReferencia),
      latApprox: latApprox == null && nullToAbsent
          ? const Value.absent()
          : Value(latApprox),
      lngApprox: lngApprox == null && nullToAbsent
          ? const Value.absent()
          : Value(lngApprox),
      tipoLocal: tipoLocal == null && nullToAbsent
          ? const Value.absent()
          : Value(tipoLocal),
      tieneBalanza: Value(tieneBalanza),
      activa: Value(activa),
      fechaRegistro: Value(fechaRegistro),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
    );
  }

  factory PulperiaLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PulperiaLocal(
      id: serializer.fromJson<String>(json['id']),
      idPublico: serializer.fromJson<String>(json['idPublico']),
      nombreNegocio: serializer.fromJson<String?>(json['nombreNegocio']),
      nombreContacto: serializer.fromJson<String>(json['nombreContacto']),
      telefono: serializer.fromJson<String?>(json['telefono']),
      whatsapp: serializer.fromJson<String?>(json['whatsapp']),
      zonaId: serializer.fromJson<String>(json['zonaId']),
      direccionReferencia:
          serializer.fromJson<String?>(json['direccionReferencia']),
      latApprox: serializer.fromJson<double?>(json['latApprox']),
      lngApprox: serializer.fromJson<double?>(json['lngApprox']),
      tipoLocal: serializer.fromJson<String?>(json['tipoLocal']),
      tieneBalanza: serializer.fromJson<bool>(json['tieneBalanza']),
      activa: serializer.fromJson<bool>(json['activa']),
      fechaRegistro: serializer.fromJson<DateTime>(json['fechaRegistro']),
      userId: serializer.fromJson<String?>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'idPublico': serializer.toJson<String>(idPublico),
      'nombreNegocio': serializer.toJson<String?>(nombreNegocio),
      'nombreContacto': serializer.toJson<String>(nombreContacto),
      'telefono': serializer.toJson<String?>(telefono),
      'whatsapp': serializer.toJson<String?>(whatsapp),
      'zonaId': serializer.toJson<String>(zonaId),
      'direccionReferencia': serializer.toJson<String?>(direccionReferencia),
      'latApprox': serializer.toJson<double?>(latApprox),
      'lngApprox': serializer.toJson<double?>(lngApprox),
      'tipoLocal': serializer.toJson<String?>(tipoLocal),
      'tieneBalanza': serializer.toJson<bool>(tieneBalanza),
      'activa': serializer.toJson<bool>(activa),
      'fechaRegistro': serializer.toJson<DateTime>(fechaRegistro),
      'userId': serializer.toJson<String?>(userId),
    };
  }

  PulperiaLocal copyWith(
          {String? id,
          String? idPublico,
          Value<String?> nombreNegocio = const Value.absent(),
          String? nombreContacto,
          Value<String?> telefono = const Value.absent(),
          Value<String?> whatsapp = const Value.absent(),
          String? zonaId,
          Value<String?> direccionReferencia = const Value.absent(),
          Value<double?> latApprox = const Value.absent(),
          Value<double?> lngApprox = const Value.absent(),
          Value<String?> tipoLocal = const Value.absent(),
          bool? tieneBalanza,
          bool? activa,
          DateTime? fechaRegistro,
          Value<String?> userId = const Value.absent()}) =>
      PulperiaLocal(
        id: id ?? this.id,
        idPublico: idPublico ?? this.idPublico,
        nombreNegocio:
            nombreNegocio.present ? nombreNegocio.value : this.nombreNegocio,
        nombreContacto: nombreContacto ?? this.nombreContacto,
        telefono: telefono.present ? telefono.value : this.telefono,
        whatsapp: whatsapp.present ? whatsapp.value : this.whatsapp,
        zonaId: zonaId ?? this.zonaId,
        direccionReferencia: direccionReferencia.present
            ? direccionReferencia.value
            : this.direccionReferencia,
        latApprox: latApprox.present ? latApprox.value : this.latApprox,
        lngApprox: lngApprox.present ? lngApprox.value : this.lngApprox,
        tipoLocal: tipoLocal.present ? tipoLocal.value : this.tipoLocal,
        tieneBalanza: tieneBalanza ?? this.tieneBalanza,
        activa: activa ?? this.activa,
        fechaRegistro: fechaRegistro ?? this.fechaRegistro,
        userId: userId.present ? userId.value : this.userId,
      );
  PulperiaLocal copyWithCompanion(PulperiasCompanion data) {
    return PulperiaLocal(
      id: data.id.present ? data.id.value : this.id,
      idPublico: data.idPublico.present ? data.idPublico.value : this.idPublico,
      nombreNegocio: data.nombreNegocio.present
          ? data.nombreNegocio.value
          : this.nombreNegocio,
      nombreContacto: data.nombreContacto.present
          ? data.nombreContacto.value
          : this.nombreContacto,
      telefono: data.telefono.present ? data.telefono.value : this.telefono,
      whatsapp: data.whatsapp.present ? data.whatsapp.value : this.whatsapp,
      zonaId: data.zonaId.present ? data.zonaId.value : this.zonaId,
      direccionReferencia: data.direccionReferencia.present
          ? data.direccionReferencia.value
          : this.direccionReferencia,
      latApprox: data.latApprox.present ? data.latApprox.value : this.latApprox,
      lngApprox: data.lngApprox.present ? data.lngApprox.value : this.lngApprox,
      tipoLocal: data.tipoLocal.present ? data.tipoLocal.value : this.tipoLocal,
      tieneBalanza: data.tieneBalanza.present
          ? data.tieneBalanza.value
          : this.tieneBalanza,
      activa: data.activa.present ? data.activa.value : this.activa,
      fechaRegistro: data.fechaRegistro.present
          ? data.fechaRegistro.value
          : this.fechaRegistro,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PulperiaLocal(')
          ..write('id: $id, ')
          ..write('idPublico: $idPublico, ')
          ..write('nombreNegocio: $nombreNegocio, ')
          ..write('nombreContacto: $nombreContacto, ')
          ..write('telefono: $telefono, ')
          ..write('whatsapp: $whatsapp, ')
          ..write('zonaId: $zonaId, ')
          ..write('direccionReferencia: $direccionReferencia, ')
          ..write('latApprox: $latApprox, ')
          ..write('lngApprox: $lngApprox, ')
          ..write('tipoLocal: $tipoLocal, ')
          ..write('tieneBalanza: $tieneBalanza, ')
          ..write('activa: $activa, ')
          ..write('fechaRegistro: $fechaRegistro, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      idPublico,
      nombreNegocio,
      nombreContacto,
      telefono,
      whatsapp,
      zonaId,
      direccionReferencia,
      latApprox,
      lngApprox,
      tipoLocal,
      tieneBalanza,
      activa,
      fechaRegistro,
      userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PulperiaLocal &&
          other.id == this.id &&
          other.idPublico == this.idPublico &&
          other.nombreNegocio == this.nombreNegocio &&
          other.nombreContacto == this.nombreContacto &&
          other.telefono == this.telefono &&
          other.whatsapp == this.whatsapp &&
          other.zonaId == this.zonaId &&
          other.direccionReferencia == this.direccionReferencia &&
          other.latApprox == this.latApprox &&
          other.lngApprox == this.lngApprox &&
          other.tipoLocal == this.tipoLocal &&
          other.tieneBalanza == this.tieneBalanza &&
          other.activa == this.activa &&
          other.fechaRegistro == this.fechaRegistro &&
          other.userId == this.userId);
}

class PulperiasCompanion extends UpdateCompanion<PulperiaLocal> {
  final Value<String> id;
  final Value<String> idPublico;
  final Value<String?> nombreNegocio;
  final Value<String> nombreContacto;
  final Value<String?> telefono;
  final Value<String?> whatsapp;
  final Value<String> zonaId;
  final Value<String?> direccionReferencia;
  final Value<double?> latApprox;
  final Value<double?> lngApprox;
  final Value<String?> tipoLocal;
  final Value<bool> tieneBalanza;
  final Value<bool> activa;
  final Value<DateTime> fechaRegistro;
  final Value<String?> userId;
  final Value<int> rowid;
  const PulperiasCompanion({
    this.id = const Value.absent(),
    this.idPublico = const Value.absent(),
    this.nombreNegocio = const Value.absent(),
    this.nombreContacto = const Value.absent(),
    this.telefono = const Value.absent(),
    this.whatsapp = const Value.absent(),
    this.zonaId = const Value.absent(),
    this.direccionReferencia = const Value.absent(),
    this.latApprox = const Value.absent(),
    this.lngApprox = const Value.absent(),
    this.tipoLocal = const Value.absent(),
    this.tieneBalanza = const Value.absent(),
    this.activa = const Value.absent(),
    this.fechaRegistro = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PulperiasCompanion.insert({
    required String id,
    required String idPublico,
    this.nombreNegocio = const Value.absent(),
    required String nombreContacto,
    this.telefono = const Value.absent(),
    this.whatsapp = const Value.absent(),
    required String zonaId,
    this.direccionReferencia = const Value.absent(),
    this.latApprox = const Value.absent(),
    this.lngApprox = const Value.absent(),
    this.tipoLocal = const Value.absent(),
    this.tieneBalanza = const Value.absent(),
    this.activa = const Value.absent(),
    this.fechaRegistro = const Value.absent(),
    this.userId = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        idPublico = Value(idPublico),
        nombreContacto = Value(nombreContacto),
        zonaId = Value(zonaId);
  static Insertable<PulperiaLocal> custom({
    Expression<String>? id,
    Expression<String>? idPublico,
    Expression<String>? nombreNegocio,
    Expression<String>? nombreContacto,
    Expression<String>? telefono,
    Expression<String>? whatsapp,
    Expression<String>? zonaId,
    Expression<String>? direccionReferencia,
    Expression<double>? latApprox,
    Expression<double>? lngApprox,
    Expression<String>? tipoLocal,
    Expression<bool>? tieneBalanza,
    Expression<bool>? activa,
    Expression<DateTime>? fechaRegistro,
    Expression<String>? userId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idPublico != null) 'id_publico': idPublico,
      if (nombreNegocio != null) 'nombre_negocio': nombreNegocio,
      if (nombreContacto != null) 'nombre_contacto': nombreContacto,
      if (telefono != null) 'telefono': telefono,
      if (whatsapp != null) 'whatsapp': whatsapp,
      if (zonaId != null) 'zona_id': zonaId,
      if (direccionReferencia != null)
        'direccion_referencia': direccionReferencia,
      if (latApprox != null) 'lat_approx': latApprox,
      if (lngApprox != null) 'lng_approx': lngApprox,
      if (tipoLocal != null) 'tipo_local': tipoLocal,
      if (tieneBalanza != null) 'tiene_balanza': tieneBalanza,
      if (activa != null) 'activa': activa,
      if (fechaRegistro != null) 'fecha_registro': fechaRegistro,
      if (userId != null) 'user_id': userId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PulperiasCompanion copyWith(
      {Value<String>? id,
      Value<String>? idPublico,
      Value<String?>? nombreNegocio,
      Value<String>? nombreContacto,
      Value<String?>? telefono,
      Value<String?>? whatsapp,
      Value<String>? zonaId,
      Value<String?>? direccionReferencia,
      Value<double?>? latApprox,
      Value<double?>? lngApprox,
      Value<String?>? tipoLocal,
      Value<bool>? tieneBalanza,
      Value<bool>? activa,
      Value<DateTime>? fechaRegistro,
      Value<String?>? userId,
      Value<int>? rowid}) {
    return PulperiasCompanion(
      id: id ?? this.id,
      idPublico: idPublico ?? this.idPublico,
      nombreNegocio: nombreNegocio ?? this.nombreNegocio,
      nombreContacto: nombreContacto ?? this.nombreContacto,
      telefono: telefono ?? this.telefono,
      whatsapp: whatsapp ?? this.whatsapp,
      zonaId: zonaId ?? this.zonaId,
      direccionReferencia: direccionReferencia ?? this.direccionReferencia,
      latApprox: latApprox ?? this.latApprox,
      lngApprox: lngApprox ?? this.lngApprox,
      tipoLocal: tipoLocal ?? this.tipoLocal,
      tieneBalanza: tieneBalanza ?? this.tieneBalanza,
      activa: activa ?? this.activa,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
      userId: userId ?? this.userId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (idPublico.present) {
      map['id_publico'] = Variable<String>(idPublico.value);
    }
    if (nombreNegocio.present) {
      map['nombre_negocio'] = Variable<String>(nombreNegocio.value);
    }
    if (nombreContacto.present) {
      map['nombre_contacto'] = Variable<String>(nombreContacto.value);
    }
    if (telefono.present) {
      map['telefono'] = Variable<String>(telefono.value);
    }
    if (whatsapp.present) {
      map['whatsapp'] = Variable<String>(whatsapp.value);
    }
    if (zonaId.present) {
      map['zona_id'] = Variable<String>(zonaId.value);
    }
    if (direccionReferencia.present) {
      map['direccion_referencia'] = Variable<String>(direccionReferencia.value);
    }
    if (latApprox.present) {
      map['lat_approx'] = Variable<double>(latApprox.value);
    }
    if (lngApprox.present) {
      map['lng_approx'] = Variable<double>(lngApprox.value);
    }
    if (tipoLocal.present) {
      map['tipo_local'] = Variable<String>(tipoLocal.value);
    }
    if (tieneBalanza.present) {
      map['tiene_balanza'] = Variable<bool>(tieneBalanza.value);
    }
    if (activa.present) {
      map['activa'] = Variable<bool>(activa.value);
    }
    if (fechaRegistro.present) {
      map['fecha_registro'] = Variable<DateTime>(fechaRegistro.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PulperiasCompanion(')
          ..write('id: $id, ')
          ..write('idPublico: $idPublico, ')
          ..write('nombreNegocio: $nombreNegocio, ')
          ..write('nombreContacto: $nombreContacto, ')
          ..write('telefono: $telefono, ')
          ..write('whatsapp: $whatsapp, ')
          ..write('zonaId: $zonaId, ')
          ..write('direccionReferencia: $direccionReferencia, ')
          ..write('latApprox: $latApprox, ')
          ..write('lngApprox: $lngApprox, ')
          ..write('tipoLocal: $tipoLocal, ')
          ..write('tieneBalanza: $tieneBalanza, ')
          ..write('activa: $activa, ')
          ..write('fechaRegistro: $fechaRegistro, ')
          ..write('userId: $userId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ClientesFiadoTable extends ClientesFiado
    with TableInfo<$ClientesFiadoTable, ClienteFiadoLocal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientesFiadoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pulperiaIdMeta =
      const VerificationMeta('pulperiaId');
  @override
  late final GeneratedColumn<String> pulperiaId = GeneratedColumn<String>(
      'pulperia_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
      'nombre', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _apodoMeta = const VerificationMeta('apodo');
  @override
  late final GeneratedColumn<String> apodo = GeneratedColumn<String>(
      'apodo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _telefonoMeta =
      const VerificationMeta('telefono');
  @override
  late final GeneratedColumn<String> telefono = GeneratedColumn<String>(
      'telefono', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _limiteFiadoMeta =
      const VerificationMeta('limiteFiado');
  @override
  late final GeneratedColumn<double> limiteFiado = GeneratedColumn<double>(
      'limite_fiado', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(1000));
  static const VerificationMeta _saldoActualMeta =
      const VerificationMeta('saldoActual');
  @override
  late final GeneratedColumn<double> saldoActual = GeneratedColumn<double>(
      'saldo_actual', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _estadoMeta = const VerificationMeta('estado');
  @override
  late final GeneratedColumn<String> estado = GeneratedColumn<String>(
      'estado', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('activo'));
  static const VerificationMeta _nivelConfianzaMeta =
      const VerificationMeta('nivelConfianza');
  @override
  late final GeneratedColumn<int> nivelConfianza = GeneratedColumn<int>(
      'nivel_confianza', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(3));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        pulperiaId,
        nombre,
        apodo,
        telefono,
        limiteFiado,
        saldoActual,
        estado,
        nivelConfianza,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'clientes_fiado';
  @override
  VerificationContext validateIntegrity(Insertable<ClienteFiadoLocal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('pulperia_id')) {
      context.handle(
          _pulperiaIdMeta,
          pulperiaId.isAcceptableOrUnknown(
              data['pulperia_id']!, _pulperiaIdMeta));
    } else if (isInserting) {
      context.missing(_pulperiaIdMeta);
    }
    if (data.containsKey('nombre')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['nombre']!, _nombreMeta));
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    if (data.containsKey('apodo')) {
      context.handle(
          _apodoMeta, apodo.isAcceptableOrUnknown(data['apodo']!, _apodoMeta));
    }
    if (data.containsKey('telefono')) {
      context.handle(_telefonoMeta,
          telefono.isAcceptableOrUnknown(data['telefono']!, _telefonoMeta));
    }
    if (data.containsKey('limite_fiado')) {
      context.handle(
          _limiteFiadoMeta,
          limiteFiado.isAcceptableOrUnknown(
              data['limite_fiado']!, _limiteFiadoMeta));
    }
    if (data.containsKey('saldo_actual')) {
      context.handle(
          _saldoActualMeta,
          saldoActual.isAcceptableOrUnknown(
              data['saldo_actual']!, _saldoActualMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado']!, _estadoMeta));
    }
    if (data.containsKey('nivel_confianza')) {
      context.handle(
          _nivelConfianzaMeta,
          nivelConfianza.isAcceptableOrUnknown(
              data['nivel_confianza']!, _nivelConfianzaMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClienteFiadoLocal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteFiadoLocal(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      pulperiaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pulperia_id'])!,
      nombre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nombre'])!,
      apodo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}apodo']),
      telefono: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}telefono']),
      limiteFiado: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}limite_fiado'])!,
      saldoActual: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}saldo_actual'])!,
      estado: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}estado'])!,
      nivelConfianza: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}nivel_confianza'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ClientesFiadoTable createAlias(String alias) {
    return $ClientesFiadoTable(attachedDatabase, alias);
  }
}

class ClienteFiadoLocal extends DataClass
    implements Insertable<ClienteFiadoLocal> {
  final String id;
  final String pulperiaId;
  final String nombre;
  final String? apodo;
  final String? telefono;
  final double limiteFiado;
  final double saldoActual;
  final String estado;
  final int nivelConfianza;
  final DateTime createdAt;
  const ClienteFiadoLocal(
      {required this.id,
      required this.pulperiaId,
      required this.nombre,
      this.apodo,
      this.telefono,
      required this.limiteFiado,
      required this.saldoActual,
      required this.estado,
      required this.nivelConfianza,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['pulperia_id'] = Variable<String>(pulperiaId);
    map['nombre'] = Variable<String>(nombre);
    if (!nullToAbsent || apodo != null) {
      map['apodo'] = Variable<String>(apodo);
    }
    if (!nullToAbsent || telefono != null) {
      map['telefono'] = Variable<String>(telefono);
    }
    map['limite_fiado'] = Variable<double>(limiteFiado);
    map['saldo_actual'] = Variable<double>(saldoActual);
    map['estado'] = Variable<String>(estado);
    map['nivel_confianza'] = Variable<int>(nivelConfianza);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ClientesFiadoCompanion toCompanion(bool nullToAbsent) {
    return ClientesFiadoCompanion(
      id: Value(id),
      pulperiaId: Value(pulperiaId),
      nombre: Value(nombre),
      apodo:
          apodo == null && nullToAbsent ? const Value.absent() : Value(apodo),
      telefono: telefono == null && nullToAbsent
          ? const Value.absent()
          : Value(telefono),
      limiteFiado: Value(limiteFiado),
      saldoActual: Value(saldoActual),
      estado: Value(estado),
      nivelConfianza: Value(nivelConfianza),
      createdAt: Value(createdAt),
    );
  }

  factory ClienteFiadoLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClienteFiadoLocal(
      id: serializer.fromJson<String>(json['id']),
      pulperiaId: serializer.fromJson<String>(json['pulperiaId']),
      nombre: serializer.fromJson<String>(json['nombre']),
      apodo: serializer.fromJson<String?>(json['apodo']),
      telefono: serializer.fromJson<String?>(json['telefono']),
      limiteFiado: serializer.fromJson<double>(json['limiteFiado']),
      saldoActual: serializer.fromJson<double>(json['saldoActual']),
      estado: serializer.fromJson<String>(json['estado']),
      nivelConfianza: serializer.fromJson<int>(json['nivelConfianza']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'pulperiaId': serializer.toJson<String>(pulperiaId),
      'nombre': serializer.toJson<String>(nombre),
      'apodo': serializer.toJson<String?>(apodo),
      'telefono': serializer.toJson<String?>(telefono),
      'limiteFiado': serializer.toJson<double>(limiteFiado),
      'saldoActual': serializer.toJson<double>(saldoActual),
      'estado': serializer.toJson<String>(estado),
      'nivelConfianza': serializer.toJson<int>(nivelConfianza),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ClienteFiadoLocal copyWith(
          {String? id,
          String? pulperiaId,
          String? nombre,
          Value<String?> apodo = const Value.absent(),
          Value<String?> telefono = const Value.absent(),
          double? limiteFiado,
          double? saldoActual,
          String? estado,
          int? nivelConfianza,
          DateTime? createdAt}) =>
      ClienteFiadoLocal(
        id: id ?? this.id,
        pulperiaId: pulperiaId ?? this.pulperiaId,
        nombre: nombre ?? this.nombre,
        apodo: apodo.present ? apodo.value : this.apodo,
        telefono: telefono.present ? telefono.value : this.telefono,
        limiteFiado: limiteFiado ?? this.limiteFiado,
        saldoActual: saldoActual ?? this.saldoActual,
        estado: estado ?? this.estado,
        nivelConfianza: nivelConfianza ?? this.nivelConfianza,
        createdAt: createdAt ?? this.createdAt,
      );
  ClienteFiadoLocal copyWithCompanion(ClientesFiadoCompanion data) {
    return ClienteFiadoLocal(
      id: data.id.present ? data.id.value : this.id,
      pulperiaId:
          data.pulperiaId.present ? data.pulperiaId.value : this.pulperiaId,
      nombre: data.nombre.present ? data.nombre.value : this.nombre,
      apodo: data.apodo.present ? data.apodo.value : this.apodo,
      telefono: data.telefono.present ? data.telefono.value : this.telefono,
      limiteFiado:
          data.limiteFiado.present ? data.limiteFiado.value : this.limiteFiado,
      saldoActual:
          data.saldoActual.present ? data.saldoActual.value : this.saldoActual,
      estado: data.estado.present ? data.estado.value : this.estado,
      nivelConfianza: data.nivelConfianza.present
          ? data.nivelConfianza.value
          : this.nivelConfianza,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClienteFiadoLocal(')
          ..write('id: $id, ')
          ..write('pulperiaId: $pulperiaId, ')
          ..write('nombre: $nombre, ')
          ..write('apodo: $apodo, ')
          ..write('telefono: $telefono, ')
          ..write('limiteFiado: $limiteFiado, ')
          ..write('saldoActual: $saldoActual, ')
          ..write('estado: $estado, ')
          ..write('nivelConfianza: $nivelConfianza, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, pulperiaId, nombre, apodo, telefono,
      limiteFiado, saldoActual, estado, nivelConfianza, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClienteFiadoLocal &&
          other.id == this.id &&
          other.pulperiaId == this.pulperiaId &&
          other.nombre == this.nombre &&
          other.apodo == this.apodo &&
          other.telefono == this.telefono &&
          other.limiteFiado == this.limiteFiado &&
          other.saldoActual == this.saldoActual &&
          other.estado == this.estado &&
          other.nivelConfianza == this.nivelConfianza &&
          other.createdAt == this.createdAt);
}

class ClientesFiadoCompanion extends UpdateCompanion<ClienteFiadoLocal> {
  final Value<String> id;
  final Value<String> pulperiaId;
  final Value<String> nombre;
  final Value<String?> apodo;
  final Value<String?> telefono;
  final Value<double> limiteFiado;
  final Value<double> saldoActual;
  final Value<String> estado;
  final Value<int> nivelConfianza;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const ClientesFiadoCompanion({
    this.id = const Value.absent(),
    this.pulperiaId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.apodo = const Value.absent(),
    this.telefono = const Value.absent(),
    this.limiteFiado = const Value.absent(),
    this.saldoActual = const Value.absent(),
    this.estado = const Value.absent(),
    this.nivelConfianza = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClientesFiadoCompanion.insert({
    required String id,
    required String pulperiaId,
    required String nombre,
    this.apodo = const Value.absent(),
    this.telefono = const Value.absent(),
    this.limiteFiado = const Value.absent(),
    this.saldoActual = const Value.absent(),
    this.estado = const Value.absent(),
    this.nivelConfianza = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        pulperiaId = Value(pulperiaId),
        nombre = Value(nombre);
  static Insertable<ClienteFiadoLocal> custom({
    Expression<String>? id,
    Expression<String>? pulperiaId,
    Expression<String>? nombre,
    Expression<String>? apodo,
    Expression<String>? telefono,
    Expression<double>? limiteFiado,
    Expression<double>? saldoActual,
    Expression<String>? estado,
    Expression<int>? nivelConfianza,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pulperiaId != null) 'pulperia_id': pulperiaId,
      if (nombre != null) 'nombre': nombre,
      if (apodo != null) 'apodo': apodo,
      if (telefono != null) 'telefono': telefono,
      if (limiteFiado != null) 'limite_fiado': limiteFiado,
      if (saldoActual != null) 'saldo_actual': saldoActual,
      if (estado != null) 'estado': estado,
      if (nivelConfianza != null) 'nivel_confianza': nivelConfianza,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClientesFiadoCompanion copyWith(
      {Value<String>? id,
      Value<String>? pulperiaId,
      Value<String>? nombre,
      Value<String?>? apodo,
      Value<String?>? telefono,
      Value<double>? limiteFiado,
      Value<double>? saldoActual,
      Value<String>? estado,
      Value<int>? nivelConfianza,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return ClientesFiadoCompanion(
      id: id ?? this.id,
      pulperiaId: pulperiaId ?? this.pulperiaId,
      nombre: nombre ?? this.nombre,
      apodo: apodo ?? this.apodo,
      telefono: telefono ?? this.telefono,
      limiteFiado: limiteFiado ?? this.limiteFiado,
      saldoActual: saldoActual ?? this.saldoActual,
      estado: estado ?? this.estado,
      nivelConfianza: nivelConfianza ?? this.nivelConfianza,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (pulperiaId.present) {
      map['pulperia_id'] = Variable<String>(pulperiaId.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (apodo.present) {
      map['apodo'] = Variable<String>(apodo.value);
    }
    if (telefono.present) {
      map['telefono'] = Variable<String>(telefono.value);
    }
    if (limiteFiado.present) {
      map['limite_fiado'] = Variable<double>(limiteFiado.value);
    }
    if (saldoActual.present) {
      map['saldo_actual'] = Variable<double>(saldoActual.value);
    }
    if (estado.present) {
      map['estado'] = Variable<String>(estado.value);
    }
    if (nivelConfianza.present) {
      map['nivel_confianza'] = Variable<int>(nivelConfianza.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientesFiadoCompanion(')
          ..write('id: $id, ')
          ..write('pulperiaId: $pulperiaId, ')
          ..write('nombre: $nombre, ')
          ..write('apodo: $apodo, ')
          ..write('telefono: $telefono, ')
          ..write('limiteFiado: $limiteFiado, ')
          ..write('saldoActual: $saldoActual, ')
          ..write('estado: $estado, ')
          ..write('nivelConfianza: $nivelConfianza, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RegistrosTable extends Registros
    with TableInfo<$RegistrosTable, RegistroLocal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RegistrosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pulperiaIdMeta =
      const VerificationMeta('pulperiaId');
  @override
  late final GeneratedColumn<String> pulperiaId = GeneratedColumn<String>(
      'pulperia_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _productoIdMeta =
      const VerificationMeta('productoId');
  @override
  late final GeneratedColumn<String> productoId = GeneratedColumn<String>(
      'producto_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  @override
  late final GeneratedColumn<String> tipo = GeneratedColumn<String>(
      'tipo', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cantidadMeta =
      const VerificationMeta('cantidad');
  @override
  late final GeneratedColumn<double> cantidad = GeneratedColumn<double>(
      'cantidad', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _unidadPrincipalMeta =
      const VerificationMeta('unidadPrincipal');
  @override
  late final GeneratedColumn<double> unidadPrincipal = GeneratedColumn<double>(
      'unidad_principal', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _unidadSecundariaMeta =
      const VerificationMeta('unidadSecundaria');
  @override
  late final GeneratedColumn<double> unidadSecundaria = GeneratedColumn<double>(
      'unidad_secundaria', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _precioCostoMeta =
      const VerificationMeta('precioCosto');
  @override
  late final GeneratedColumn<double> precioCosto = GeneratedColumn<double>(
      'precio_costo', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _precioVentaMeta =
      const VerificationMeta('precioVenta');
  @override
  late final GeneratedColumn<double> precioVenta = GeneratedColumn<double>(
      'precio_venta', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _fechaHoraMeta =
      const VerificationMeta('fechaHora');
  @override
  late final GeneratedColumn<DateTime> fechaHora = GeneratedColumn<DateTime>(
      'fecha_hora', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _esCorteMeta =
      const VerificationMeta('esCorte');
  @override
  late final GeneratedColumn<bool> esCorte = GeneratedColumn<bool>(
      'es_corte', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("es_corte" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _numeroCorteMeta =
      const VerificationMeta('numeroCorte');
  @override
  late final GeneratedColumn<int> numeroCorte = GeneratedColumn<int>(
      'numero_corte', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  static const VerificationMeta _contextoMeta =
      const VerificationMeta('contexto');
  @override
  late final GeneratedColumn<String> contexto = GeneratedColumn<String>(
      'contexto', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('{}'));
  static const VerificationMeta _sincronizadoMeta =
      const VerificationMeta('sincronizado');
  @override
  late final GeneratedColumn<bool> sincronizado = GeneratedColumn<bool>(
      'sincronizado', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("sincronizado" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _fechaSincronizacionMeta =
      const VerificationMeta('fechaSincronizacion');
  @override
  late final GeneratedColumn<DateTime> fechaSincronizacion =
      GeneratedColumn<DateTime>('fecha_sincronizacion', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _errorSyncMeta =
      const VerificationMeta('errorSync');
  @override
  late final GeneratedColumn<String> errorSync = GeneratedColumn<String>(
      'error_sync', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gpsLatMeta = const VerificationMeta('gpsLat');
  @override
  late final GeneratedColumn<double> gpsLat = GeneratedColumn<double>(
      'gps_lat', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _gpsLngMeta = const VerificationMeta('gpsLng');
  @override
  late final GeneratedColumn<double> gpsLng = GeneratedColumn<double>(
      'gps_lng', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        pulperiaId,
        productoId,
        tipo,
        cantidad,
        unidadPrincipal,
        unidadSecundaria,
        precioCosto,
        precioVenta,
        fechaHora,
        esCorte,
        numeroCorte,
        contexto,
        sincronizado,
        fechaSincronizacion,
        errorSync,
        gpsLat,
        gpsLng,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'registros';
  @override
  VerificationContext validateIntegrity(Insertable<RegistroLocal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('pulperia_id')) {
      context.handle(
          _pulperiaIdMeta,
          pulperiaId.isAcceptableOrUnknown(
              data['pulperia_id']!, _pulperiaIdMeta));
    } else if (isInserting) {
      context.missing(_pulperiaIdMeta);
    }
    if (data.containsKey('producto_id')) {
      context.handle(
          _productoIdMeta,
          productoId.isAcceptableOrUnknown(
              data['producto_id']!, _productoIdMeta));
    }
    if (data.containsKey('tipo')) {
      context.handle(
          _tipoMeta, tipo.isAcceptableOrUnknown(data['tipo']!, _tipoMeta));
    } else if (isInserting) {
      context.missing(_tipoMeta);
    }
    if (data.containsKey('cantidad')) {
      context.handle(_cantidadMeta,
          cantidad.isAcceptableOrUnknown(data['cantidad']!, _cantidadMeta));
    }
    if (data.containsKey('unidad_principal')) {
      context.handle(
          _unidadPrincipalMeta,
          unidadPrincipal.isAcceptableOrUnknown(
              data['unidad_principal']!, _unidadPrincipalMeta));
    }
    if (data.containsKey('unidad_secundaria')) {
      context.handle(
          _unidadSecundariaMeta,
          unidadSecundaria.isAcceptableOrUnknown(
              data['unidad_secundaria']!, _unidadSecundariaMeta));
    }
    if (data.containsKey('precio_costo')) {
      context.handle(
          _precioCostoMeta,
          precioCosto.isAcceptableOrUnknown(
              data['precio_costo']!, _precioCostoMeta));
    }
    if (data.containsKey('precio_venta')) {
      context.handle(
          _precioVentaMeta,
          precioVenta.isAcceptableOrUnknown(
              data['precio_venta']!, _precioVentaMeta));
    }
    if (data.containsKey('fecha_hora')) {
      context.handle(_fechaHoraMeta,
          fechaHora.isAcceptableOrUnknown(data['fecha_hora']!, _fechaHoraMeta));
    } else if (isInserting) {
      context.missing(_fechaHoraMeta);
    }
    if (data.containsKey('es_corte')) {
      context.handle(_esCorteMeta,
          esCorte.isAcceptableOrUnknown(data['es_corte']!, _esCorteMeta));
    }
    if (data.containsKey('numero_corte')) {
      context.handle(
          _numeroCorteMeta,
          numeroCorte.isAcceptableOrUnknown(
              data['numero_corte']!, _numeroCorteMeta));
    }
    if (data.containsKey('contexto')) {
      context.handle(_contextoMeta,
          contexto.isAcceptableOrUnknown(data['contexto']!, _contextoMeta));
    }
    if (data.containsKey('sincronizado')) {
      context.handle(
          _sincronizadoMeta,
          sincronizado.isAcceptableOrUnknown(
              data['sincronizado']!, _sincronizadoMeta));
    }
    if (data.containsKey('fecha_sincronizacion')) {
      context.handle(
          _fechaSincronizacionMeta,
          fechaSincronizacion.isAcceptableOrUnknown(
              data['fecha_sincronizacion']!, _fechaSincronizacionMeta));
    }
    if (data.containsKey('error_sync')) {
      context.handle(_errorSyncMeta,
          errorSync.isAcceptableOrUnknown(data['error_sync']!, _errorSyncMeta));
    }
    if (data.containsKey('gps_lat')) {
      context.handle(_gpsLatMeta,
          gpsLat.isAcceptableOrUnknown(data['gps_lat']!, _gpsLatMeta));
    }
    if (data.containsKey('gps_lng')) {
      context.handle(_gpsLngMeta,
          gpsLng.isAcceptableOrUnknown(data['gps_lng']!, _gpsLngMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RegistroLocal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RegistroLocal(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      pulperiaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pulperia_id'])!,
      productoId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}producto_id']),
      tipo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tipo'])!,
      cantidad: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cantidad']),
      unidadPrincipal: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}unidad_principal']),
      unidadSecundaria: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}unidad_secundaria']),
      precioCosto: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}precio_costo']),
      precioVenta: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}precio_venta']),
      fechaHora: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}fecha_hora'])!,
      esCorte: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}es_corte'])!,
      numeroCorte: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}numero_corte'])!,
      contexto: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contexto'])!,
      sincronizado: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}sincronizado'])!,
      fechaSincronizacion: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}fecha_sincronizacion']),
      errorSync: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}error_sync']),
      gpsLat: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}gps_lat']),
      gpsLng: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}gps_lng']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $RegistrosTable createAlias(String alias) {
    return $RegistrosTable(attachedDatabase, alias);
  }
}

class RegistroLocal extends DataClass implements Insertable<RegistroLocal> {
  final String id;
  final String pulperiaId;
  final String? productoId;
  final String tipo;
  final double? cantidad;
  final double? unidadPrincipal;
  final double? unidadSecundaria;
  final double? precioCosto;
  final double? precioVenta;
  final DateTime fechaHora;
  final bool esCorte;
  final int numeroCorte;
  final String contexto;
  final bool sincronizado;
  final DateTime? fechaSincronizacion;
  final String? errorSync;
  final double? gpsLat;
  final double? gpsLng;
  final DateTime createdAt;
  const RegistroLocal(
      {required this.id,
      required this.pulperiaId,
      this.productoId,
      required this.tipo,
      this.cantidad,
      this.unidadPrincipal,
      this.unidadSecundaria,
      this.precioCosto,
      this.precioVenta,
      required this.fechaHora,
      required this.esCorte,
      required this.numeroCorte,
      required this.contexto,
      required this.sincronizado,
      this.fechaSincronizacion,
      this.errorSync,
      this.gpsLat,
      this.gpsLng,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['pulperia_id'] = Variable<String>(pulperiaId);
    if (!nullToAbsent || productoId != null) {
      map['producto_id'] = Variable<String>(productoId);
    }
    map['tipo'] = Variable<String>(tipo);
    if (!nullToAbsent || cantidad != null) {
      map['cantidad'] = Variable<double>(cantidad);
    }
    if (!nullToAbsent || unidadPrincipal != null) {
      map['unidad_principal'] = Variable<double>(unidadPrincipal);
    }
    if (!nullToAbsent || unidadSecundaria != null) {
      map['unidad_secundaria'] = Variable<double>(unidadSecundaria);
    }
    if (!nullToAbsent || precioCosto != null) {
      map['precio_costo'] = Variable<double>(precioCosto);
    }
    if (!nullToAbsent || precioVenta != null) {
      map['precio_venta'] = Variable<double>(precioVenta);
    }
    map['fecha_hora'] = Variable<DateTime>(fechaHora);
    map['es_corte'] = Variable<bool>(esCorte);
    map['numero_corte'] = Variable<int>(numeroCorte);
    map['contexto'] = Variable<String>(contexto);
    map['sincronizado'] = Variable<bool>(sincronizado);
    if (!nullToAbsent || fechaSincronizacion != null) {
      map['fecha_sincronizacion'] = Variable<DateTime>(fechaSincronizacion);
    }
    if (!nullToAbsent || errorSync != null) {
      map['error_sync'] = Variable<String>(errorSync);
    }
    if (!nullToAbsent || gpsLat != null) {
      map['gps_lat'] = Variable<double>(gpsLat);
    }
    if (!nullToAbsent || gpsLng != null) {
      map['gps_lng'] = Variable<double>(gpsLng);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RegistrosCompanion toCompanion(bool nullToAbsent) {
    return RegistrosCompanion(
      id: Value(id),
      pulperiaId: Value(pulperiaId),
      productoId: productoId == null && nullToAbsent
          ? const Value.absent()
          : Value(productoId),
      tipo: Value(tipo),
      cantidad: cantidad == null && nullToAbsent
          ? const Value.absent()
          : Value(cantidad),
      unidadPrincipal: unidadPrincipal == null && nullToAbsent
          ? const Value.absent()
          : Value(unidadPrincipal),
      unidadSecundaria: unidadSecundaria == null && nullToAbsent
          ? const Value.absent()
          : Value(unidadSecundaria),
      precioCosto: precioCosto == null && nullToAbsent
          ? const Value.absent()
          : Value(precioCosto),
      precioVenta: precioVenta == null && nullToAbsent
          ? const Value.absent()
          : Value(precioVenta),
      fechaHora: Value(fechaHora),
      esCorte: Value(esCorte),
      numeroCorte: Value(numeroCorte),
      contexto: Value(contexto),
      sincronizado: Value(sincronizado),
      fechaSincronizacion: fechaSincronizacion == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaSincronizacion),
      errorSync: errorSync == null && nullToAbsent
          ? const Value.absent()
          : Value(errorSync),
      gpsLat:
          gpsLat == null && nullToAbsent ? const Value.absent() : Value(gpsLat),
      gpsLng:
          gpsLng == null && nullToAbsent ? const Value.absent() : Value(gpsLng),
      createdAt: Value(createdAt),
    );
  }

  factory RegistroLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RegistroLocal(
      id: serializer.fromJson<String>(json['id']),
      pulperiaId: serializer.fromJson<String>(json['pulperiaId']),
      productoId: serializer.fromJson<String?>(json['productoId']),
      tipo: serializer.fromJson<String>(json['tipo']),
      cantidad: serializer.fromJson<double?>(json['cantidad']),
      unidadPrincipal: serializer.fromJson<double?>(json['unidadPrincipal']),
      unidadSecundaria: serializer.fromJson<double?>(json['unidadSecundaria']),
      precioCosto: serializer.fromJson<double?>(json['precioCosto']),
      precioVenta: serializer.fromJson<double?>(json['precioVenta']),
      fechaHora: serializer.fromJson<DateTime>(json['fechaHora']),
      esCorte: serializer.fromJson<bool>(json['esCorte']),
      numeroCorte: serializer.fromJson<int>(json['numeroCorte']),
      contexto: serializer.fromJson<String>(json['contexto']),
      sincronizado: serializer.fromJson<bool>(json['sincronizado']),
      fechaSincronizacion:
          serializer.fromJson<DateTime?>(json['fechaSincronizacion']),
      errorSync: serializer.fromJson<String?>(json['errorSync']),
      gpsLat: serializer.fromJson<double?>(json['gpsLat']),
      gpsLng: serializer.fromJson<double?>(json['gpsLng']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'pulperiaId': serializer.toJson<String>(pulperiaId),
      'productoId': serializer.toJson<String?>(productoId),
      'tipo': serializer.toJson<String>(tipo),
      'cantidad': serializer.toJson<double?>(cantidad),
      'unidadPrincipal': serializer.toJson<double?>(unidadPrincipal),
      'unidadSecundaria': serializer.toJson<double?>(unidadSecundaria),
      'precioCosto': serializer.toJson<double?>(precioCosto),
      'precioVenta': serializer.toJson<double?>(precioVenta),
      'fechaHora': serializer.toJson<DateTime>(fechaHora),
      'esCorte': serializer.toJson<bool>(esCorte),
      'numeroCorte': serializer.toJson<int>(numeroCorte),
      'contexto': serializer.toJson<String>(contexto),
      'sincronizado': serializer.toJson<bool>(sincronizado),
      'fechaSincronizacion': serializer.toJson<DateTime?>(fechaSincronizacion),
      'errorSync': serializer.toJson<String?>(errorSync),
      'gpsLat': serializer.toJson<double?>(gpsLat),
      'gpsLng': serializer.toJson<double?>(gpsLng),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RegistroLocal copyWith(
          {String? id,
          String? pulperiaId,
          Value<String?> productoId = const Value.absent(),
          String? tipo,
          Value<double?> cantidad = const Value.absent(),
          Value<double?> unidadPrincipal = const Value.absent(),
          Value<double?> unidadSecundaria = const Value.absent(),
          Value<double?> precioCosto = const Value.absent(),
          Value<double?> precioVenta = const Value.absent(),
          DateTime? fechaHora,
          bool? esCorte,
          int? numeroCorte,
          String? contexto,
          bool? sincronizado,
          Value<DateTime?> fechaSincronizacion = const Value.absent(),
          Value<String?> errorSync = const Value.absent(),
          Value<double?> gpsLat = const Value.absent(),
          Value<double?> gpsLng = const Value.absent(),
          DateTime? createdAt}) =>
      RegistroLocal(
        id: id ?? this.id,
        pulperiaId: pulperiaId ?? this.pulperiaId,
        productoId: productoId.present ? productoId.value : this.productoId,
        tipo: tipo ?? this.tipo,
        cantidad: cantidad.present ? cantidad.value : this.cantidad,
        unidadPrincipal: unidadPrincipal.present
            ? unidadPrincipal.value
            : this.unidadPrincipal,
        unidadSecundaria: unidadSecundaria.present
            ? unidadSecundaria.value
            : this.unidadSecundaria,
        precioCosto: precioCosto.present ? precioCosto.value : this.precioCosto,
        precioVenta: precioVenta.present ? precioVenta.value : this.precioVenta,
        fechaHora: fechaHora ?? this.fechaHora,
        esCorte: esCorte ?? this.esCorte,
        numeroCorte: numeroCorte ?? this.numeroCorte,
        contexto: contexto ?? this.contexto,
        sincronizado: sincronizado ?? this.sincronizado,
        fechaSincronizacion: fechaSincronizacion.present
            ? fechaSincronizacion.value
            : this.fechaSincronizacion,
        errorSync: errorSync.present ? errorSync.value : this.errorSync,
        gpsLat: gpsLat.present ? gpsLat.value : this.gpsLat,
        gpsLng: gpsLng.present ? gpsLng.value : this.gpsLng,
        createdAt: createdAt ?? this.createdAt,
      );
  RegistroLocal copyWithCompanion(RegistrosCompanion data) {
    return RegistroLocal(
      id: data.id.present ? data.id.value : this.id,
      pulperiaId:
          data.pulperiaId.present ? data.pulperiaId.value : this.pulperiaId,
      productoId:
          data.productoId.present ? data.productoId.value : this.productoId,
      tipo: data.tipo.present ? data.tipo.value : this.tipo,
      cantidad: data.cantidad.present ? data.cantidad.value : this.cantidad,
      unidadPrincipal: data.unidadPrincipal.present
          ? data.unidadPrincipal.value
          : this.unidadPrincipal,
      unidadSecundaria: data.unidadSecundaria.present
          ? data.unidadSecundaria.value
          : this.unidadSecundaria,
      precioCosto:
          data.precioCosto.present ? data.precioCosto.value : this.precioCosto,
      precioVenta:
          data.precioVenta.present ? data.precioVenta.value : this.precioVenta,
      fechaHora: data.fechaHora.present ? data.fechaHora.value : this.fechaHora,
      esCorte: data.esCorte.present ? data.esCorte.value : this.esCorte,
      numeroCorte:
          data.numeroCorte.present ? data.numeroCorte.value : this.numeroCorte,
      contexto: data.contexto.present ? data.contexto.value : this.contexto,
      sincronizado: data.sincronizado.present
          ? data.sincronizado.value
          : this.sincronizado,
      fechaSincronizacion: data.fechaSincronizacion.present
          ? data.fechaSincronizacion.value
          : this.fechaSincronizacion,
      errorSync: data.errorSync.present ? data.errorSync.value : this.errorSync,
      gpsLat: data.gpsLat.present ? data.gpsLat.value : this.gpsLat,
      gpsLng: data.gpsLng.present ? data.gpsLng.value : this.gpsLng,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RegistroLocal(')
          ..write('id: $id, ')
          ..write('pulperiaId: $pulperiaId, ')
          ..write('productoId: $productoId, ')
          ..write('tipo: $tipo, ')
          ..write('cantidad: $cantidad, ')
          ..write('unidadPrincipal: $unidadPrincipal, ')
          ..write('unidadSecundaria: $unidadSecundaria, ')
          ..write('precioCosto: $precioCosto, ')
          ..write('precioVenta: $precioVenta, ')
          ..write('fechaHora: $fechaHora, ')
          ..write('esCorte: $esCorte, ')
          ..write('numeroCorte: $numeroCorte, ')
          ..write('contexto: $contexto, ')
          ..write('sincronizado: $sincronizado, ')
          ..write('fechaSincronizacion: $fechaSincronizacion, ')
          ..write('errorSync: $errorSync, ')
          ..write('gpsLat: $gpsLat, ')
          ..write('gpsLng: $gpsLng, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      pulperiaId,
      productoId,
      tipo,
      cantidad,
      unidadPrincipal,
      unidadSecundaria,
      precioCosto,
      precioVenta,
      fechaHora,
      esCorte,
      numeroCorte,
      contexto,
      sincronizado,
      fechaSincronizacion,
      errorSync,
      gpsLat,
      gpsLng,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RegistroLocal &&
          other.id == this.id &&
          other.pulperiaId == this.pulperiaId &&
          other.productoId == this.productoId &&
          other.tipo == this.tipo &&
          other.cantidad == this.cantidad &&
          other.unidadPrincipal == this.unidadPrincipal &&
          other.unidadSecundaria == this.unidadSecundaria &&
          other.precioCosto == this.precioCosto &&
          other.precioVenta == this.precioVenta &&
          other.fechaHora == this.fechaHora &&
          other.esCorte == this.esCorte &&
          other.numeroCorte == this.numeroCorte &&
          other.contexto == this.contexto &&
          other.sincronizado == this.sincronizado &&
          other.fechaSincronizacion == this.fechaSincronizacion &&
          other.errorSync == this.errorSync &&
          other.gpsLat == this.gpsLat &&
          other.gpsLng == this.gpsLng &&
          other.createdAt == this.createdAt);
}

class RegistrosCompanion extends UpdateCompanion<RegistroLocal> {
  final Value<String> id;
  final Value<String> pulperiaId;
  final Value<String?> productoId;
  final Value<String> tipo;
  final Value<double?> cantidad;
  final Value<double?> unidadPrincipal;
  final Value<double?> unidadSecundaria;
  final Value<double?> precioCosto;
  final Value<double?> precioVenta;
  final Value<DateTime> fechaHora;
  final Value<bool> esCorte;
  final Value<int> numeroCorte;
  final Value<String> contexto;
  final Value<bool> sincronizado;
  final Value<DateTime?> fechaSincronizacion;
  final Value<String?> errorSync;
  final Value<double?> gpsLat;
  final Value<double?> gpsLng;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const RegistrosCompanion({
    this.id = const Value.absent(),
    this.pulperiaId = const Value.absent(),
    this.productoId = const Value.absent(),
    this.tipo = const Value.absent(),
    this.cantidad = const Value.absent(),
    this.unidadPrincipal = const Value.absent(),
    this.unidadSecundaria = const Value.absent(),
    this.precioCosto = const Value.absent(),
    this.precioVenta = const Value.absent(),
    this.fechaHora = const Value.absent(),
    this.esCorte = const Value.absent(),
    this.numeroCorte = const Value.absent(),
    this.contexto = const Value.absent(),
    this.sincronizado = const Value.absent(),
    this.fechaSincronizacion = const Value.absent(),
    this.errorSync = const Value.absent(),
    this.gpsLat = const Value.absent(),
    this.gpsLng = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RegistrosCompanion.insert({
    required String id,
    required String pulperiaId,
    this.productoId = const Value.absent(),
    required String tipo,
    this.cantidad = const Value.absent(),
    this.unidadPrincipal = const Value.absent(),
    this.unidadSecundaria = const Value.absent(),
    this.precioCosto = const Value.absent(),
    this.precioVenta = const Value.absent(),
    required DateTime fechaHora,
    this.esCorte = const Value.absent(),
    this.numeroCorte = const Value.absent(),
    this.contexto = const Value.absent(),
    this.sincronizado = const Value.absent(),
    this.fechaSincronizacion = const Value.absent(),
    this.errorSync = const Value.absent(),
    this.gpsLat = const Value.absent(),
    this.gpsLng = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        pulperiaId = Value(pulperiaId),
        tipo = Value(tipo),
        fechaHora = Value(fechaHora);
  static Insertable<RegistroLocal> custom({
    Expression<String>? id,
    Expression<String>? pulperiaId,
    Expression<String>? productoId,
    Expression<String>? tipo,
    Expression<double>? cantidad,
    Expression<double>? unidadPrincipal,
    Expression<double>? unidadSecundaria,
    Expression<double>? precioCosto,
    Expression<double>? precioVenta,
    Expression<DateTime>? fechaHora,
    Expression<bool>? esCorte,
    Expression<int>? numeroCorte,
    Expression<String>? contexto,
    Expression<bool>? sincronizado,
    Expression<DateTime>? fechaSincronizacion,
    Expression<String>? errorSync,
    Expression<double>? gpsLat,
    Expression<double>? gpsLng,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pulperiaId != null) 'pulperia_id': pulperiaId,
      if (productoId != null) 'producto_id': productoId,
      if (tipo != null) 'tipo': tipo,
      if (cantidad != null) 'cantidad': cantidad,
      if (unidadPrincipal != null) 'unidad_principal': unidadPrincipal,
      if (unidadSecundaria != null) 'unidad_secundaria': unidadSecundaria,
      if (precioCosto != null) 'precio_costo': precioCosto,
      if (precioVenta != null) 'precio_venta': precioVenta,
      if (fechaHora != null) 'fecha_hora': fechaHora,
      if (esCorte != null) 'es_corte': esCorte,
      if (numeroCorte != null) 'numero_corte': numeroCorte,
      if (contexto != null) 'contexto': contexto,
      if (sincronizado != null) 'sincronizado': sincronizado,
      if (fechaSincronizacion != null)
        'fecha_sincronizacion': fechaSincronizacion,
      if (errorSync != null) 'error_sync': errorSync,
      if (gpsLat != null) 'gps_lat': gpsLat,
      if (gpsLng != null) 'gps_lng': gpsLng,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RegistrosCompanion copyWith(
      {Value<String>? id,
      Value<String>? pulperiaId,
      Value<String?>? productoId,
      Value<String>? tipo,
      Value<double?>? cantidad,
      Value<double?>? unidadPrincipal,
      Value<double?>? unidadSecundaria,
      Value<double?>? precioCosto,
      Value<double?>? precioVenta,
      Value<DateTime>? fechaHora,
      Value<bool>? esCorte,
      Value<int>? numeroCorte,
      Value<String>? contexto,
      Value<bool>? sincronizado,
      Value<DateTime?>? fechaSincronizacion,
      Value<String?>? errorSync,
      Value<double?>? gpsLat,
      Value<double?>? gpsLng,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return RegistrosCompanion(
      id: id ?? this.id,
      pulperiaId: pulperiaId ?? this.pulperiaId,
      productoId: productoId ?? this.productoId,
      tipo: tipo ?? this.tipo,
      cantidad: cantidad ?? this.cantidad,
      unidadPrincipal: unidadPrincipal ?? this.unidadPrincipal,
      unidadSecundaria: unidadSecundaria ?? this.unidadSecundaria,
      precioCosto: precioCosto ?? this.precioCosto,
      precioVenta: precioVenta ?? this.precioVenta,
      fechaHora: fechaHora ?? this.fechaHora,
      esCorte: esCorte ?? this.esCorte,
      numeroCorte: numeroCorte ?? this.numeroCorte,
      contexto: contexto ?? this.contexto,
      sincronizado: sincronizado ?? this.sincronizado,
      fechaSincronizacion: fechaSincronizacion ?? this.fechaSincronizacion,
      errorSync: errorSync ?? this.errorSync,
      gpsLat: gpsLat ?? this.gpsLat,
      gpsLng: gpsLng ?? this.gpsLng,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (pulperiaId.present) {
      map['pulperia_id'] = Variable<String>(pulperiaId.value);
    }
    if (productoId.present) {
      map['producto_id'] = Variable<String>(productoId.value);
    }
    if (tipo.present) {
      map['tipo'] = Variable<String>(tipo.value);
    }
    if (cantidad.present) {
      map['cantidad'] = Variable<double>(cantidad.value);
    }
    if (unidadPrincipal.present) {
      map['unidad_principal'] = Variable<double>(unidadPrincipal.value);
    }
    if (unidadSecundaria.present) {
      map['unidad_secundaria'] = Variable<double>(unidadSecundaria.value);
    }
    if (precioCosto.present) {
      map['precio_costo'] = Variable<double>(precioCosto.value);
    }
    if (precioVenta.present) {
      map['precio_venta'] = Variable<double>(precioVenta.value);
    }
    if (fechaHora.present) {
      map['fecha_hora'] = Variable<DateTime>(fechaHora.value);
    }
    if (esCorte.present) {
      map['es_corte'] = Variable<bool>(esCorte.value);
    }
    if (numeroCorte.present) {
      map['numero_corte'] = Variable<int>(numeroCorte.value);
    }
    if (contexto.present) {
      map['contexto'] = Variable<String>(contexto.value);
    }
    if (sincronizado.present) {
      map['sincronizado'] = Variable<bool>(sincronizado.value);
    }
    if (fechaSincronizacion.present) {
      map['fecha_sincronizacion'] =
          Variable<DateTime>(fechaSincronizacion.value);
    }
    if (errorSync.present) {
      map['error_sync'] = Variable<String>(errorSync.value);
    }
    if (gpsLat.present) {
      map['gps_lat'] = Variable<double>(gpsLat.value);
    }
    if (gpsLng.present) {
      map['gps_lng'] = Variable<double>(gpsLng.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RegistrosCompanion(')
          ..write('id: $id, ')
          ..write('pulperiaId: $pulperiaId, ')
          ..write('productoId: $productoId, ')
          ..write('tipo: $tipo, ')
          ..write('cantidad: $cantidad, ')
          ..write('unidadPrincipal: $unidadPrincipal, ')
          ..write('unidadSecundaria: $unidadSecundaria, ')
          ..write('precioCosto: $precioCosto, ')
          ..write('precioVenta: $precioVenta, ')
          ..write('fechaHora: $fechaHora, ')
          ..write('esCorte: $esCorte, ')
          ..write('numeroCorte: $numeroCorte, ')
          ..write('contexto: $contexto, ')
          ..write('sincronizado: $sincronizado, ')
          ..write('fechaSincronizacion: $fechaSincronizacion, ')
          ..write('errorSync: $errorSync, ')
          ..write('gpsLat: $gpsLat, ')
          ..write('gpsLng: $gpsLng, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FiadosTable extends Fiados with TableInfo<$FiadosTable, FiadoLocal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FiadosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pulperiaIdMeta =
      const VerificationMeta('pulperiaId');
  @override
  late final GeneratedColumn<String> pulperiaId = GeneratedColumn<String>(
      'pulperia_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _clienteIdMeta =
      const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'cliente_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _registroVentaIdMeta =
      const VerificationMeta('registroVentaId');
  @override
  late final GeneratedColumn<String> registroVentaId = GeneratedColumn<String>(
      'registro_venta_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _montoOriginalMeta =
      const VerificationMeta('montoOriginal');
  @override
  late final GeneratedColumn<double> montoOriginal = GeneratedColumn<double>(
      'monto_original', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _saldoPendienteMeta =
      const VerificationMeta('saldoPendiente');
  @override
  late final GeneratedColumn<double> saldoPendiente = GeneratedColumn<double>(
      'saldo_pendiente', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _pagosMeta = const VerificationMeta('pagos');
  @override
  late final GeneratedColumn<String> pagos = GeneratedColumn<String>(
      'pagos', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('[]'));
  static const VerificationMeta _fechaFiadoMeta =
      const VerificationMeta('fechaFiado');
  @override
  late final GeneratedColumn<DateTime> fechaFiado = GeneratedColumn<DateTime>(
      'fecha_fiado', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _fechaVencimientoMeta =
      const VerificationMeta('fechaVencimiento');
  @override
  late final GeneratedColumn<DateTime> fechaVencimiento =
      GeneratedColumn<DateTime>('fecha_vencimiento', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _estadoMeta = const VerificationMeta('estado');
  @override
  late final GeneratedColumn<String> estado = GeneratedColumn<String>(
      'estado', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('pendiente'));
  static const VerificationMeta _ultimoPagoFechaMeta =
      const VerificationMeta('ultimoPagoFecha');
  @override
  late final GeneratedColumn<DateTime> ultimoPagoFecha =
      GeneratedColumn<DateTime>('ultimo_pago_fecha', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _ultimoPagoMontoMeta =
      const VerificationMeta('ultimoPagoMonto');
  @override
  late final GeneratedColumn<double> ultimoPagoMonto = GeneratedColumn<double>(
      'ultimo_pago_monto', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _sincronizadoMeta =
      const VerificationMeta('sincronizado');
  @override
  late final GeneratedColumn<bool> sincronizado = GeneratedColumn<bool>(
      'sincronizado', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("sincronizado" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _archivadoMeta =
      const VerificationMeta('archivado');
  @override
  late final GeneratedColumn<bool> archivado = GeneratedColumn<bool>(
      'archivado', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("archivado" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        pulperiaId,
        clienteId,
        registroVentaId,
        montoOriginal,
        saldoPendiente,
        pagos,
        fechaFiado,
        fechaVencimiento,
        estado,
        ultimoPagoFecha,
        ultimoPagoMonto,
        sincronizado,
        archivado,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'fiados';
  @override
  VerificationContext validateIntegrity(Insertable<FiadoLocal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('pulperia_id')) {
      context.handle(
          _pulperiaIdMeta,
          pulperiaId.isAcceptableOrUnknown(
              data['pulperia_id']!, _pulperiaIdMeta));
    } else if (isInserting) {
      context.missing(_pulperiaIdMeta);
    }
    if (data.containsKey('cliente_id')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['cliente_id']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('registro_venta_id')) {
      context.handle(
          _registroVentaIdMeta,
          registroVentaId.isAcceptableOrUnknown(
              data['registro_venta_id']!, _registroVentaIdMeta));
    }
    if (data.containsKey('monto_original')) {
      context.handle(
          _montoOriginalMeta,
          montoOriginal.isAcceptableOrUnknown(
              data['monto_original']!, _montoOriginalMeta));
    } else if (isInserting) {
      context.missing(_montoOriginalMeta);
    }
    if (data.containsKey('saldo_pendiente')) {
      context.handle(
          _saldoPendienteMeta,
          saldoPendiente.isAcceptableOrUnknown(
              data['saldo_pendiente']!, _saldoPendienteMeta));
    } else if (isInserting) {
      context.missing(_saldoPendienteMeta);
    }
    if (data.containsKey('pagos')) {
      context.handle(
          _pagosMeta, pagos.isAcceptableOrUnknown(data['pagos']!, _pagosMeta));
    }
    if (data.containsKey('fecha_fiado')) {
      context.handle(
          _fechaFiadoMeta,
          fechaFiado.isAcceptableOrUnknown(
              data['fecha_fiado']!, _fechaFiadoMeta));
    } else if (isInserting) {
      context.missing(_fechaFiadoMeta);
    }
    if (data.containsKey('fecha_vencimiento')) {
      context.handle(
          _fechaVencimientoMeta,
          fechaVencimiento.isAcceptableOrUnknown(
              data['fecha_vencimiento']!, _fechaVencimientoMeta));
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado']!, _estadoMeta));
    }
    if (data.containsKey('ultimo_pago_fecha')) {
      context.handle(
          _ultimoPagoFechaMeta,
          ultimoPagoFecha.isAcceptableOrUnknown(
              data['ultimo_pago_fecha']!, _ultimoPagoFechaMeta));
    }
    if (data.containsKey('ultimo_pago_monto')) {
      context.handle(
          _ultimoPagoMontoMeta,
          ultimoPagoMonto.isAcceptableOrUnknown(
              data['ultimo_pago_monto']!, _ultimoPagoMontoMeta));
    }
    if (data.containsKey('sincronizado')) {
      context.handle(
          _sincronizadoMeta,
          sincronizado.isAcceptableOrUnknown(
              data['sincronizado']!, _sincronizadoMeta));
    }
    if (data.containsKey('archivado')) {
      context.handle(_archivadoMeta,
          archivado.isAcceptableOrUnknown(data['archivado']!, _archivadoMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FiadoLocal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FiadoLocal(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      pulperiaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pulperia_id'])!,
      clienteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cliente_id'])!,
      registroVentaId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}registro_venta_id']),
      montoOriginal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}monto_original'])!,
      saldoPendiente: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}saldo_pendiente'])!,
      pagos: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pagos'])!,
      fechaFiado: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}fecha_fiado'])!,
      fechaVencimiento: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}fecha_vencimiento']),
      estado: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}estado'])!,
      ultimoPagoFecha: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}ultimo_pago_fecha']),
      ultimoPagoMonto: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}ultimo_pago_monto']),
      sincronizado: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}sincronizado'])!,
      archivado: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}archivado'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $FiadosTable createAlias(String alias) {
    return $FiadosTable(attachedDatabase, alias);
  }
}

class FiadoLocal extends DataClass implements Insertable<FiadoLocal> {
  final String id;
  final String pulperiaId;
  final String clienteId;
  final String? registroVentaId;
  final double montoOriginal;
  final double saldoPendiente;
  final String pagos;
  final DateTime fechaFiado;
  final DateTime? fechaVencimiento;
  final String estado;
  final DateTime? ultimoPagoFecha;
  final double? ultimoPagoMonto;
  final bool sincronizado;
  final bool archivado;
  final DateTime createdAt;
  final DateTime updatedAt;
  const FiadoLocal(
      {required this.id,
      required this.pulperiaId,
      required this.clienteId,
      this.registroVentaId,
      required this.montoOriginal,
      required this.saldoPendiente,
      required this.pagos,
      required this.fechaFiado,
      this.fechaVencimiento,
      required this.estado,
      this.ultimoPagoFecha,
      this.ultimoPagoMonto,
      required this.sincronizado,
      required this.archivado,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['pulperia_id'] = Variable<String>(pulperiaId);
    map['cliente_id'] = Variable<String>(clienteId);
    if (!nullToAbsent || registroVentaId != null) {
      map['registro_venta_id'] = Variable<String>(registroVentaId);
    }
    map['monto_original'] = Variable<double>(montoOriginal);
    map['saldo_pendiente'] = Variable<double>(saldoPendiente);
    map['pagos'] = Variable<String>(pagos);
    map['fecha_fiado'] = Variable<DateTime>(fechaFiado);
    if (!nullToAbsent || fechaVencimiento != null) {
      map['fecha_vencimiento'] = Variable<DateTime>(fechaVencimiento);
    }
    map['estado'] = Variable<String>(estado);
    if (!nullToAbsent || ultimoPagoFecha != null) {
      map['ultimo_pago_fecha'] = Variable<DateTime>(ultimoPagoFecha);
    }
    if (!nullToAbsent || ultimoPagoMonto != null) {
      map['ultimo_pago_monto'] = Variable<double>(ultimoPagoMonto);
    }
    map['sincronizado'] = Variable<bool>(sincronizado);
    map['archivado'] = Variable<bool>(archivado);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  FiadosCompanion toCompanion(bool nullToAbsent) {
    return FiadosCompanion(
      id: Value(id),
      pulperiaId: Value(pulperiaId),
      clienteId: Value(clienteId),
      registroVentaId: registroVentaId == null && nullToAbsent
          ? const Value.absent()
          : Value(registroVentaId),
      montoOriginal: Value(montoOriginal),
      saldoPendiente: Value(saldoPendiente),
      pagos: Value(pagos),
      fechaFiado: Value(fechaFiado),
      fechaVencimiento: fechaVencimiento == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaVencimiento),
      estado: Value(estado),
      ultimoPagoFecha: ultimoPagoFecha == null && nullToAbsent
          ? const Value.absent()
          : Value(ultimoPagoFecha),
      ultimoPagoMonto: ultimoPagoMonto == null && nullToAbsent
          ? const Value.absent()
          : Value(ultimoPagoMonto),
      sincronizado: Value(sincronizado),
      archivado: Value(archivado),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory FiadoLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FiadoLocal(
      id: serializer.fromJson<String>(json['id']),
      pulperiaId: serializer.fromJson<String>(json['pulperiaId']),
      clienteId: serializer.fromJson<String>(json['clienteId']),
      registroVentaId: serializer.fromJson<String?>(json['registroVentaId']),
      montoOriginal: serializer.fromJson<double>(json['montoOriginal']),
      saldoPendiente: serializer.fromJson<double>(json['saldoPendiente']),
      pagos: serializer.fromJson<String>(json['pagos']),
      fechaFiado: serializer.fromJson<DateTime>(json['fechaFiado']),
      fechaVencimiento:
          serializer.fromJson<DateTime?>(json['fechaVencimiento']),
      estado: serializer.fromJson<String>(json['estado']),
      ultimoPagoFecha: serializer.fromJson<DateTime?>(json['ultimoPagoFecha']),
      ultimoPagoMonto: serializer.fromJson<double?>(json['ultimoPagoMonto']),
      sincronizado: serializer.fromJson<bool>(json['sincronizado']),
      archivado: serializer.fromJson<bool>(json['archivado']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'pulperiaId': serializer.toJson<String>(pulperiaId),
      'clienteId': serializer.toJson<String>(clienteId),
      'registroVentaId': serializer.toJson<String?>(registroVentaId),
      'montoOriginal': serializer.toJson<double>(montoOriginal),
      'saldoPendiente': serializer.toJson<double>(saldoPendiente),
      'pagos': serializer.toJson<String>(pagos),
      'fechaFiado': serializer.toJson<DateTime>(fechaFiado),
      'fechaVencimiento': serializer.toJson<DateTime?>(fechaVencimiento),
      'estado': serializer.toJson<String>(estado),
      'ultimoPagoFecha': serializer.toJson<DateTime?>(ultimoPagoFecha),
      'ultimoPagoMonto': serializer.toJson<double?>(ultimoPagoMonto),
      'sincronizado': serializer.toJson<bool>(sincronizado),
      'archivado': serializer.toJson<bool>(archivado),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  FiadoLocal copyWith(
          {String? id,
          String? pulperiaId,
          String? clienteId,
          Value<String?> registroVentaId = const Value.absent(),
          double? montoOriginal,
          double? saldoPendiente,
          String? pagos,
          DateTime? fechaFiado,
          Value<DateTime?> fechaVencimiento = const Value.absent(),
          String? estado,
          Value<DateTime?> ultimoPagoFecha = const Value.absent(),
          Value<double?> ultimoPagoMonto = const Value.absent(),
          bool? sincronizado,
          bool? archivado,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      FiadoLocal(
        id: id ?? this.id,
        pulperiaId: pulperiaId ?? this.pulperiaId,
        clienteId: clienteId ?? this.clienteId,
        registroVentaId: registroVentaId.present
            ? registroVentaId.value
            : this.registroVentaId,
        montoOriginal: montoOriginal ?? this.montoOriginal,
        saldoPendiente: saldoPendiente ?? this.saldoPendiente,
        pagos: pagos ?? this.pagos,
        fechaFiado: fechaFiado ?? this.fechaFiado,
        fechaVencimiento: fechaVencimiento.present
            ? fechaVencimiento.value
            : this.fechaVencimiento,
        estado: estado ?? this.estado,
        ultimoPagoFecha: ultimoPagoFecha.present
            ? ultimoPagoFecha.value
            : this.ultimoPagoFecha,
        ultimoPagoMonto: ultimoPagoMonto.present
            ? ultimoPagoMonto.value
            : this.ultimoPagoMonto,
        sincronizado: sincronizado ?? this.sincronizado,
        archivado: archivado ?? this.archivado,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  FiadoLocal copyWithCompanion(FiadosCompanion data) {
    return FiadoLocal(
      id: data.id.present ? data.id.value : this.id,
      pulperiaId:
          data.pulperiaId.present ? data.pulperiaId.value : this.pulperiaId,
      clienteId: data.clienteId.present ? data.clienteId.value : this.clienteId,
      registroVentaId: data.registroVentaId.present
          ? data.registroVentaId.value
          : this.registroVentaId,
      montoOriginal: data.montoOriginal.present
          ? data.montoOriginal.value
          : this.montoOriginal,
      saldoPendiente: data.saldoPendiente.present
          ? data.saldoPendiente.value
          : this.saldoPendiente,
      pagos: data.pagos.present ? data.pagos.value : this.pagos,
      fechaFiado:
          data.fechaFiado.present ? data.fechaFiado.value : this.fechaFiado,
      fechaVencimiento: data.fechaVencimiento.present
          ? data.fechaVencimiento.value
          : this.fechaVencimiento,
      estado: data.estado.present ? data.estado.value : this.estado,
      ultimoPagoFecha: data.ultimoPagoFecha.present
          ? data.ultimoPagoFecha.value
          : this.ultimoPagoFecha,
      ultimoPagoMonto: data.ultimoPagoMonto.present
          ? data.ultimoPagoMonto.value
          : this.ultimoPagoMonto,
      sincronizado: data.sincronizado.present
          ? data.sincronizado.value
          : this.sincronizado,
      archivado: data.archivado.present ? data.archivado.value : this.archivado,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FiadoLocal(')
          ..write('id: $id, ')
          ..write('pulperiaId: $pulperiaId, ')
          ..write('clienteId: $clienteId, ')
          ..write('registroVentaId: $registroVentaId, ')
          ..write('montoOriginal: $montoOriginal, ')
          ..write('saldoPendiente: $saldoPendiente, ')
          ..write('pagos: $pagos, ')
          ..write('fechaFiado: $fechaFiado, ')
          ..write('fechaVencimiento: $fechaVencimiento, ')
          ..write('estado: $estado, ')
          ..write('ultimoPagoFecha: $ultimoPagoFecha, ')
          ..write('ultimoPagoMonto: $ultimoPagoMonto, ')
          ..write('sincronizado: $sincronizado, ')
          ..write('archivado: $archivado, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      pulperiaId,
      clienteId,
      registroVentaId,
      montoOriginal,
      saldoPendiente,
      pagos,
      fechaFiado,
      fechaVencimiento,
      estado,
      ultimoPagoFecha,
      ultimoPagoMonto,
      sincronizado,
      archivado,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FiadoLocal &&
          other.id == this.id &&
          other.pulperiaId == this.pulperiaId &&
          other.clienteId == this.clienteId &&
          other.registroVentaId == this.registroVentaId &&
          other.montoOriginal == this.montoOriginal &&
          other.saldoPendiente == this.saldoPendiente &&
          other.pagos == this.pagos &&
          other.fechaFiado == this.fechaFiado &&
          other.fechaVencimiento == this.fechaVencimiento &&
          other.estado == this.estado &&
          other.ultimoPagoFecha == this.ultimoPagoFecha &&
          other.ultimoPagoMonto == this.ultimoPagoMonto &&
          other.sincronizado == this.sincronizado &&
          other.archivado == this.archivado &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class FiadosCompanion extends UpdateCompanion<FiadoLocal> {
  final Value<String> id;
  final Value<String> pulperiaId;
  final Value<String> clienteId;
  final Value<String?> registroVentaId;
  final Value<double> montoOriginal;
  final Value<double> saldoPendiente;
  final Value<String> pagos;
  final Value<DateTime> fechaFiado;
  final Value<DateTime?> fechaVencimiento;
  final Value<String> estado;
  final Value<DateTime?> ultimoPagoFecha;
  final Value<double?> ultimoPagoMonto;
  final Value<bool> sincronizado;
  final Value<bool> archivado;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const FiadosCompanion({
    this.id = const Value.absent(),
    this.pulperiaId = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.registroVentaId = const Value.absent(),
    this.montoOriginal = const Value.absent(),
    this.saldoPendiente = const Value.absent(),
    this.pagos = const Value.absent(),
    this.fechaFiado = const Value.absent(),
    this.fechaVencimiento = const Value.absent(),
    this.estado = const Value.absent(),
    this.ultimoPagoFecha = const Value.absent(),
    this.ultimoPagoMonto = const Value.absent(),
    this.sincronizado = const Value.absent(),
    this.archivado = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FiadosCompanion.insert({
    required String id,
    required String pulperiaId,
    required String clienteId,
    this.registroVentaId = const Value.absent(),
    required double montoOriginal,
    required double saldoPendiente,
    this.pagos = const Value.absent(),
    required DateTime fechaFiado,
    this.fechaVencimiento = const Value.absent(),
    this.estado = const Value.absent(),
    this.ultimoPagoFecha = const Value.absent(),
    this.ultimoPagoMonto = const Value.absent(),
    this.sincronizado = const Value.absent(),
    this.archivado = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        pulperiaId = Value(pulperiaId),
        clienteId = Value(clienteId),
        montoOriginal = Value(montoOriginal),
        saldoPendiente = Value(saldoPendiente),
        fechaFiado = Value(fechaFiado);
  static Insertable<FiadoLocal> custom({
    Expression<String>? id,
    Expression<String>? pulperiaId,
    Expression<String>? clienteId,
    Expression<String>? registroVentaId,
    Expression<double>? montoOriginal,
    Expression<double>? saldoPendiente,
    Expression<String>? pagos,
    Expression<DateTime>? fechaFiado,
    Expression<DateTime>? fechaVencimiento,
    Expression<String>? estado,
    Expression<DateTime>? ultimoPagoFecha,
    Expression<double>? ultimoPagoMonto,
    Expression<bool>? sincronizado,
    Expression<bool>? archivado,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pulperiaId != null) 'pulperia_id': pulperiaId,
      if (clienteId != null) 'cliente_id': clienteId,
      if (registroVentaId != null) 'registro_venta_id': registroVentaId,
      if (montoOriginal != null) 'monto_original': montoOriginal,
      if (saldoPendiente != null) 'saldo_pendiente': saldoPendiente,
      if (pagos != null) 'pagos': pagos,
      if (fechaFiado != null) 'fecha_fiado': fechaFiado,
      if (fechaVencimiento != null) 'fecha_vencimiento': fechaVencimiento,
      if (estado != null) 'estado': estado,
      if (ultimoPagoFecha != null) 'ultimo_pago_fecha': ultimoPagoFecha,
      if (ultimoPagoMonto != null) 'ultimo_pago_monto': ultimoPagoMonto,
      if (sincronizado != null) 'sincronizado': sincronizado,
      if (archivado != null) 'archivado': archivado,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FiadosCompanion copyWith(
      {Value<String>? id,
      Value<String>? pulperiaId,
      Value<String>? clienteId,
      Value<String?>? registroVentaId,
      Value<double>? montoOriginal,
      Value<double>? saldoPendiente,
      Value<String>? pagos,
      Value<DateTime>? fechaFiado,
      Value<DateTime?>? fechaVencimiento,
      Value<String>? estado,
      Value<DateTime?>? ultimoPagoFecha,
      Value<double?>? ultimoPagoMonto,
      Value<bool>? sincronizado,
      Value<bool>? archivado,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return FiadosCompanion(
      id: id ?? this.id,
      pulperiaId: pulperiaId ?? this.pulperiaId,
      clienteId: clienteId ?? this.clienteId,
      registroVentaId: registroVentaId ?? this.registroVentaId,
      montoOriginal: montoOriginal ?? this.montoOriginal,
      saldoPendiente: saldoPendiente ?? this.saldoPendiente,
      pagos: pagos ?? this.pagos,
      fechaFiado: fechaFiado ?? this.fechaFiado,
      fechaVencimiento: fechaVencimiento ?? this.fechaVencimiento,
      estado: estado ?? this.estado,
      ultimoPagoFecha: ultimoPagoFecha ?? this.ultimoPagoFecha,
      ultimoPagoMonto: ultimoPagoMonto ?? this.ultimoPagoMonto,
      sincronizado: sincronizado ?? this.sincronizado,
      archivado: archivado ?? this.archivado,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (pulperiaId.present) {
      map['pulperia_id'] = Variable<String>(pulperiaId.value);
    }
    if (clienteId.present) {
      map['cliente_id'] = Variable<String>(clienteId.value);
    }
    if (registroVentaId.present) {
      map['registro_venta_id'] = Variable<String>(registroVentaId.value);
    }
    if (montoOriginal.present) {
      map['monto_original'] = Variable<double>(montoOriginal.value);
    }
    if (saldoPendiente.present) {
      map['saldo_pendiente'] = Variable<double>(saldoPendiente.value);
    }
    if (pagos.present) {
      map['pagos'] = Variable<String>(pagos.value);
    }
    if (fechaFiado.present) {
      map['fecha_fiado'] = Variable<DateTime>(fechaFiado.value);
    }
    if (fechaVencimiento.present) {
      map['fecha_vencimiento'] = Variable<DateTime>(fechaVencimiento.value);
    }
    if (estado.present) {
      map['estado'] = Variable<String>(estado.value);
    }
    if (ultimoPagoFecha.present) {
      map['ultimo_pago_fecha'] = Variable<DateTime>(ultimoPagoFecha.value);
    }
    if (ultimoPagoMonto.present) {
      map['ultimo_pago_monto'] = Variable<double>(ultimoPagoMonto.value);
    }
    if (sincronizado.present) {
      map['sincronizado'] = Variable<bool>(sincronizado.value);
    }
    if (archivado.present) {
      map['archivado'] = Variable<bool>(archivado.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FiadosCompanion(')
          ..write('id: $id, ')
          ..write('pulperiaId: $pulperiaId, ')
          ..write('clienteId: $clienteId, ')
          ..write('registroVentaId: $registroVentaId, ')
          ..write('montoOriginal: $montoOriginal, ')
          ..write('saldoPendiente: $saldoPendiente, ')
          ..write('pagos: $pagos, ')
          ..write('fechaFiado: $fechaFiado, ')
          ..write('fechaVencimiento: $fechaVencimiento, ')
          ..write('estado: $estado, ')
          ..write('ultimoPagoFecha: $ultimoPagoFecha, ')
          ..write('ultimoPagoMonto: $ultimoPagoMonto, ')
          ..write('sincronizado: $sincronizado, ')
          ..write('archivado: $archivado, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ResumenMensualTable extends ResumenMensual
    with TableInfo<$ResumenMensualTable, ResumenMensualLocal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ResumenMensualTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pulperiaIdMeta =
      const VerificationMeta('pulperiaId');
  @override
  late final GeneratedColumn<String> pulperiaId = GeneratedColumn<String>(
      'pulperia_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _anioMeta = const VerificationMeta('anio');
  @override
  late final GeneratedColumn<int> anio = GeneratedColumn<int>(
      'anio', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _mesMeta = const VerificationMeta('mes');
  @override
  late final GeneratedColumn<int> mes = GeneratedColumn<int>(
      'mes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _totalVentasMeta =
      const VerificationMeta('totalVentas');
  @override
  late final GeneratedColumn<double> totalVentas = GeneratedColumn<double>(
      'total_ventas', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _totalVentasContadoMeta =
      const VerificationMeta('totalVentasContado');
  @override
  late final GeneratedColumn<double> totalVentasContado =
      GeneratedColumn<double>('total_ventas_contado', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const Constant(0));
  static const VerificationMeta _totalVentasCreditoMeta =
      const VerificationMeta('totalVentasCredito');
  @override
  late final GeneratedColumn<double> totalVentasCredito =
      GeneratedColumn<double>('total_ventas_credito', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const Constant(0));
  static const VerificationMeta _totalCostosMeta =
      const VerificationMeta('totalCostos');
  @override
  late final GeneratedColumn<double> totalCostos = GeneratedColumn<double>(
      'total_costos', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _gananciaEstimadaMeta =
      const VerificationMeta('gananciaEstimada');
  @override
  late final GeneratedColumn<double> gananciaEstimada = GeneratedColumn<double>(
      'ganancia_estimada', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _ventasPorCategoriaMeta =
      const VerificationMeta('ventasPorCategoria');
  @override
  late final GeneratedColumn<String> ventasPorCategoria =
      GeneratedColumn<String>('ventas_por_categoria', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: false,
          defaultValue: const Constant('{}'));
  static const VerificationMeta _totalTransaccionesMeta =
      const VerificationMeta('totalTransacciones');
  @override
  late final GeneratedColumn<int> totalTransacciones = GeneratedColumn<int>(
      'total_transacciones', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _promedioVentaDiariaMeta =
      const VerificationMeta('promedioVentaDiaria');
  @override
  late final GeneratedColumn<double> promedioVentaDiaria =
      GeneratedColumn<double>('promedio_venta_diaria', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const Constant(0));
  static const VerificationMeta _diasActivosMeta =
      const VerificationMeta('diasActivos');
  @override
  late final GeneratedColumn<int> diasActivos = GeneratedColumn<int>(
      'dias_activos', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _creditosPendientesCierreMeta =
      const VerificationMeta('creditosPendientesCierre');
  @override
  late final GeneratedColumn<double> creditosPendientesCierre =
      GeneratedColumn<double>('creditos_pendientes_cierre', aliasedName, false,
          type: DriftSqlType.double,
          requiredDuringInsert: false,
          defaultValue: const Constant(0));
  static const VerificationMeta _cantidadCreditosPendientesMeta =
      const VerificationMeta('cantidadCreditosPendientes');
  @override
  late final GeneratedColumn<int> cantidadCreditosPendientes =
      GeneratedColumn<int>('cantidad_creditos_pendientes', aliasedName, false,
          type: DriftSqlType.int,
          requiredDuringInsert: false,
          defaultValue: const Constant(0));
  static const VerificationMeta _datosCompletosMeta =
      const VerificationMeta('datosCompletos');
  @override
  late final GeneratedColumn<bool> datosCompletos = GeneratedColumn<bool>(
      'datos_completos', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("datos_completos" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _generadoElMeta =
      const VerificationMeta('generadoEl');
  @override
  late final GeneratedColumn<DateTime> generadoEl = GeneratedColumn<DateTime>(
      'generado_el', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        pulperiaId,
        anio,
        mes,
        totalVentas,
        totalVentasContado,
        totalVentasCredito,
        totalCostos,
        gananciaEstimada,
        ventasPorCategoria,
        totalTransacciones,
        promedioVentaDiaria,
        diasActivos,
        creditosPendientesCierre,
        cantidadCreditosPendientes,
        datosCompletos,
        generadoEl
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'resumen_mensual';
  @override
  VerificationContext validateIntegrity(
      Insertable<ResumenMensualLocal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('pulperia_id')) {
      context.handle(
          _pulperiaIdMeta,
          pulperiaId.isAcceptableOrUnknown(
              data['pulperia_id']!, _pulperiaIdMeta));
    } else if (isInserting) {
      context.missing(_pulperiaIdMeta);
    }
    if (data.containsKey('anio')) {
      context.handle(
          _anioMeta, anio.isAcceptableOrUnknown(data['anio']!, _anioMeta));
    } else if (isInserting) {
      context.missing(_anioMeta);
    }
    if (data.containsKey('mes')) {
      context.handle(
          _mesMeta, mes.isAcceptableOrUnknown(data['mes']!, _mesMeta));
    } else if (isInserting) {
      context.missing(_mesMeta);
    }
    if (data.containsKey('total_ventas')) {
      context.handle(
          _totalVentasMeta,
          totalVentas.isAcceptableOrUnknown(
              data['total_ventas']!, _totalVentasMeta));
    }
    if (data.containsKey('total_ventas_contado')) {
      context.handle(
          _totalVentasContadoMeta,
          totalVentasContado.isAcceptableOrUnknown(
              data['total_ventas_contado']!, _totalVentasContadoMeta));
    }
    if (data.containsKey('total_ventas_credito')) {
      context.handle(
          _totalVentasCreditoMeta,
          totalVentasCredito.isAcceptableOrUnknown(
              data['total_ventas_credito']!, _totalVentasCreditoMeta));
    }
    if (data.containsKey('total_costos')) {
      context.handle(
          _totalCostosMeta,
          totalCostos.isAcceptableOrUnknown(
              data['total_costos']!, _totalCostosMeta));
    }
    if (data.containsKey('ganancia_estimada')) {
      context.handle(
          _gananciaEstimadaMeta,
          gananciaEstimada.isAcceptableOrUnknown(
              data['ganancia_estimada']!, _gananciaEstimadaMeta));
    }
    if (data.containsKey('ventas_por_categoria')) {
      context.handle(
          _ventasPorCategoriaMeta,
          ventasPorCategoria.isAcceptableOrUnknown(
              data['ventas_por_categoria']!, _ventasPorCategoriaMeta));
    }
    if (data.containsKey('total_transacciones')) {
      context.handle(
          _totalTransaccionesMeta,
          totalTransacciones.isAcceptableOrUnknown(
              data['total_transacciones']!, _totalTransaccionesMeta));
    }
    if (data.containsKey('promedio_venta_diaria')) {
      context.handle(
          _promedioVentaDiariaMeta,
          promedioVentaDiaria.isAcceptableOrUnknown(
              data['promedio_venta_diaria']!, _promedioVentaDiariaMeta));
    }
    if (data.containsKey('dias_activos')) {
      context.handle(
          _diasActivosMeta,
          diasActivos.isAcceptableOrUnknown(
              data['dias_activos']!, _diasActivosMeta));
    }
    if (data.containsKey('creditos_pendientes_cierre')) {
      context.handle(
          _creditosPendientesCierreMeta,
          creditosPendientesCierre.isAcceptableOrUnknown(
              data['creditos_pendientes_cierre']!,
              _creditosPendientesCierreMeta));
    }
    if (data.containsKey('cantidad_creditos_pendientes')) {
      context.handle(
          _cantidadCreditosPendientesMeta,
          cantidadCreditosPendientes.isAcceptableOrUnknown(
              data['cantidad_creditos_pendientes']!,
              _cantidadCreditosPendientesMeta));
    }
    if (data.containsKey('datos_completos')) {
      context.handle(
          _datosCompletosMeta,
          datosCompletos.isAcceptableOrUnknown(
              data['datos_completos']!, _datosCompletosMeta));
    }
    if (data.containsKey('generado_el')) {
      context.handle(
          _generadoElMeta,
          generadoEl.isAcceptableOrUnknown(
              data['generado_el']!, _generadoElMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ResumenMensualLocal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ResumenMensualLocal(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      pulperiaId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pulperia_id'])!,
      anio: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}anio'])!,
      mes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mes'])!,
      totalVentas: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_ventas'])!,
      totalVentasContado: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}total_ventas_contado'])!,
      totalVentasCredito: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}total_ventas_credito'])!,
      totalCostos: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_costos'])!,
      gananciaEstimada: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}ganancia_estimada'])!,
      ventasPorCategoria: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}ventas_por_categoria'])!,
      totalTransacciones: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_transacciones'])!,
      promedioVentaDiaria: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}promedio_venta_diaria'])!,
      diasActivos: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dias_activos'])!,
      creditosPendientesCierre: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}creditos_pendientes_cierre'])!,
      cantidadCreditosPendientes: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}cantidad_creditos_pendientes'])!,
      datosCompletos: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}datos_completos'])!,
      generadoEl: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}generado_el'])!,
    );
  }

  @override
  $ResumenMensualTable createAlias(String alias) {
    return $ResumenMensualTable(attachedDatabase, alias);
  }
}

class ResumenMensualLocal extends DataClass
    implements Insertable<ResumenMensualLocal> {
  final String id;
  final String pulperiaId;
  final int anio;
  final int mes;
  final double totalVentas;
  final double totalVentasContado;
  final double totalVentasCredito;
  final double totalCostos;
  final double gananciaEstimada;
  final String ventasPorCategoria;
  final int totalTransacciones;
  final double promedioVentaDiaria;
  final int diasActivos;
  final double creditosPendientesCierre;
  final int cantidadCreditosPendientes;
  final bool datosCompletos;
  final DateTime generadoEl;
  const ResumenMensualLocal(
      {required this.id,
      required this.pulperiaId,
      required this.anio,
      required this.mes,
      required this.totalVentas,
      required this.totalVentasContado,
      required this.totalVentasCredito,
      required this.totalCostos,
      required this.gananciaEstimada,
      required this.ventasPorCategoria,
      required this.totalTransacciones,
      required this.promedioVentaDiaria,
      required this.diasActivos,
      required this.creditosPendientesCierre,
      required this.cantidadCreditosPendientes,
      required this.datosCompletos,
      required this.generadoEl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['pulperia_id'] = Variable<String>(pulperiaId);
    map['anio'] = Variable<int>(anio);
    map['mes'] = Variable<int>(mes);
    map['total_ventas'] = Variable<double>(totalVentas);
    map['total_ventas_contado'] = Variable<double>(totalVentasContado);
    map['total_ventas_credito'] = Variable<double>(totalVentasCredito);
    map['total_costos'] = Variable<double>(totalCostos);
    map['ganancia_estimada'] = Variable<double>(gananciaEstimada);
    map['ventas_por_categoria'] = Variable<String>(ventasPorCategoria);
    map['total_transacciones'] = Variable<int>(totalTransacciones);
    map['promedio_venta_diaria'] = Variable<double>(promedioVentaDiaria);
    map['dias_activos'] = Variable<int>(diasActivos);
    map['creditos_pendientes_cierre'] =
        Variable<double>(creditosPendientesCierre);
    map['cantidad_creditos_pendientes'] =
        Variable<int>(cantidadCreditosPendientes);
    map['datos_completos'] = Variable<bool>(datosCompletos);
    map['generado_el'] = Variable<DateTime>(generadoEl);
    return map;
  }

  ResumenMensualCompanion toCompanion(bool nullToAbsent) {
    return ResumenMensualCompanion(
      id: Value(id),
      pulperiaId: Value(pulperiaId),
      anio: Value(anio),
      mes: Value(mes),
      totalVentas: Value(totalVentas),
      totalVentasContado: Value(totalVentasContado),
      totalVentasCredito: Value(totalVentasCredito),
      totalCostos: Value(totalCostos),
      gananciaEstimada: Value(gananciaEstimada),
      ventasPorCategoria: Value(ventasPorCategoria),
      totalTransacciones: Value(totalTransacciones),
      promedioVentaDiaria: Value(promedioVentaDiaria),
      diasActivos: Value(diasActivos),
      creditosPendientesCierre: Value(creditosPendientesCierre),
      cantidadCreditosPendientes: Value(cantidadCreditosPendientes),
      datosCompletos: Value(datosCompletos),
      generadoEl: Value(generadoEl),
    );
  }

  factory ResumenMensualLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResumenMensualLocal(
      id: serializer.fromJson<String>(json['id']),
      pulperiaId: serializer.fromJson<String>(json['pulperiaId']),
      anio: serializer.fromJson<int>(json['anio']),
      mes: serializer.fromJson<int>(json['mes']),
      totalVentas: serializer.fromJson<double>(json['totalVentas']),
      totalVentasContado:
          serializer.fromJson<double>(json['totalVentasContado']),
      totalVentasCredito:
          serializer.fromJson<double>(json['totalVentasCredito']),
      totalCostos: serializer.fromJson<double>(json['totalCostos']),
      gananciaEstimada: serializer.fromJson<double>(json['gananciaEstimada']),
      ventasPorCategoria:
          serializer.fromJson<String>(json['ventasPorCategoria']),
      totalTransacciones: serializer.fromJson<int>(json['totalTransacciones']),
      promedioVentaDiaria:
          serializer.fromJson<double>(json['promedioVentaDiaria']),
      diasActivos: serializer.fromJson<int>(json['diasActivos']),
      creditosPendientesCierre:
          serializer.fromJson<double>(json['creditosPendientesCierre']),
      cantidadCreditosPendientes:
          serializer.fromJson<int>(json['cantidadCreditosPendientes']),
      datosCompletos: serializer.fromJson<bool>(json['datosCompletos']),
      generadoEl: serializer.fromJson<DateTime>(json['generadoEl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'pulperiaId': serializer.toJson<String>(pulperiaId),
      'anio': serializer.toJson<int>(anio),
      'mes': serializer.toJson<int>(mes),
      'totalVentas': serializer.toJson<double>(totalVentas),
      'totalVentasContado': serializer.toJson<double>(totalVentasContado),
      'totalVentasCredito': serializer.toJson<double>(totalVentasCredito),
      'totalCostos': serializer.toJson<double>(totalCostos),
      'gananciaEstimada': serializer.toJson<double>(gananciaEstimada),
      'ventasPorCategoria': serializer.toJson<String>(ventasPorCategoria),
      'totalTransacciones': serializer.toJson<int>(totalTransacciones),
      'promedioVentaDiaria': serializer.toJson<double>(promedioVentaDiaria),
      'diasActivos': serializer.toJson<int>(diasActivos),
      'creditosPendientesCierre':
          serializer.toJson<double>(creditosPendientesCierre),
      'cantidadCreditosPendientes':
          serializer.toJson<int>(cantidadCreditosPendientes),
      'datosCompletos': serializer.toJson<bool>(datosCompletos),
      'generadoEl': serializer.toJson<DateTime>(generadoEl),
    };
  }

  ResumenMensualLocal copyWith(
          {String? id,
          String? pulperiaId,
          int? anio,
          int? mes,
          double? totalVentas,
          double? totalVentasContado,
          double? totalVentasCredito,
          double? totalCostos,
          double? gananciaEstimada,
          String? ventasPorCategoria,
          int? totalTransacciones,
          double? promedioVentaDiaria,
          int? diasActivos,
          double? creditosPendientesCierre,
          int? cantidadCreditosPendientes,
          bool? datosCompletos,
          DateTime? generadoEl}) =>
      ResumenMensualLocal(
        id: id ?? this.id,
        pulperiaId: pulperiaId ?? this.pulperiaId,
        anio: anio ?? this.anio,
        mes: mes ?? this.mes,
        totalVentas: totalVentas ?? this.totalVentas,
        totalVentasContado: totalVentasContado ?? this.totalVentasContado,
        totalVentasCredito: totalVentasCredito ?? this.totalVentasCredito,
        totalCostos: totalCostos ?? this.totalCostos,
        gananciaEstimada: gananciaEstimada ?? this.gananciaEstimada,
        ventasPorCategoria: ventasPorCategoria ?? this.ventasPorCategoria,
        totalTransacciones: totalTransacciones ?? this.totalTransacciones,
        promedioVentaDiaria: promedioVentaDiaria ?? this.promedioVentaDiaria,
        diasActivos: diasActivos ?? this.diasActivos,
        creditosPendientesCierre:
            creditosPendientesCierre ?? this.creditosPendientesCierre,
        cantidadCreditosPendientes:
            cantidadCreditosPendientes ?? this.cantidadCreditosPendientes,
        datosCompletos: datosCompletos ?? this.datosCompletos,
        generadoEl: generadoEl ?? this.generadoEl,
      );
  ResumenMensualLocal copyWithCompanion(ResumenMensualCompanion data) {
    return ResumenMensualLocal(
      id: data.id.present ? data.id.value : this.id,
      pulperiaId:
          data.pulperiaId.present ? data.pulperiaId.value : this.pulperiaId,
      anio: data.anio.present ? data.anio.value : this.anio,
      mes: data.mes.present ? data.mes.value : this.mes,
      totalVentas:
          data.totalVentas.present ? data.totalVentas.value : this.totalVentas,
      totalVentasContado: data.totalVentasContado.present
          ? data.totalVentasContado.value
          : this.totalVentasContado,
      totalVentasCredito: data.totalVentasCredito.present
          ? data.totalVentasCredito.value
          : this.totalVentasCredito,
      totalCostos:
          data.totalCostos.present ? data.totalCostos.value : this.totalCostos,
      gananciaEstimada: data.gananciaEstimada.present
          ? data.gananciaEstimada.value
          : this.gananciaEstimada,
      ventasPorCategoria: data.ventasPorCategoria.present
          ? data.ventasPorCategoria.value
          : this.ventasPorCategoria,
      totalTransacciones: data.totalTransacciones.present
          ? data.totalTransacciones.value
          : this.totalTransacciones,
      promedioVentaDiaria: data.promedioVentaDiaria.present
          ? data.promedioVentaDiaria.value
          : this.promedioVentaDiaria,
      diasActivos:
          data.diasActivos.present ? data.diasActivos.value : this.diasActivos,
      creditosPendientesCierre: data.creditosPendientesCierre.present
          ? data.creditosPendientesCierre.value
          : this.creditosPendientesCierre,
      cantidadCreditosPendientes: data.cantidadCreditosPendientes.present
          ? data.cantidadCreditosPendientes.value
          : this.cantidadCreditosPendientes,
      datosCompletos: data.datosCompletos.present
          ? data.datosCompletos.value
          : this.datosCompletos,
      generadoEl:
          data.generadoEl.present ? data.generadoEl.value : this.generadoEl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ResumenMensualLocal(')
          ..write('id: $id, ')
          ..write('pulperiaId: $pulperiaId, ')
          ..write('anio: $anio, ')
          ..write('mes: $mes, ')
          ..write('totalVentas: $totalVentas, ')
          ..write('totalVentasContado: $totalVentasContado, ')
          ..write('totalVentasCredito: $totalVentasCredito, ')
          ..write('totalCostos: $totalCostos, ')
          ..write('gananciaEstimada: $gananciaEstimada, ')
          ..write('ventasPorCategoria: $ventasPorCategoria, ')
          ..write('totalTransacciones: $totalTransacciones, ')
          ..write('promedioVentaDiaria: $promedioVentaDiaria, ')
          ..write('diasActivos: $diasActivos, ')
          ..write('creditosPendientesCierre: $creditosPendientesCierre, ')
          ..write('cantidadCreditosPendientes: $cantidadCreditosPendientes, ')
          ..write('datosCompletos: $datosCompletos, ')
          ..write('generadoEl: $generadoEl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      pulperiaId,
      anio,
      mes,
      totalVentas,
      totalVentasContado,
      totalVentasCredito,
      totalCostos,
      gananciaEstimada,
      ventasPorCategoria,
      totalTransacciones,
      promedioVentaDiaria,
      diasActivos,
      creditosPendientesCierre,
      cantidadCreditosPendientes,
      datosCompletos,
      generadoEl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResumenMensualLocal &&
          other.id == this.id &&
          other.pulperiaId == this.pulperiaId &&
          other.anio == this.anio &&
          other.mes == this.mes &&
          other.totalVentas == this.totalVentas &&
          other.totalVentasContado == this.totalVentasContado &&
          other.totalVentasCredito == this.totalVentasCredito &&
          other.totalCostos == this.totalCostos &&
          other.gananciaEstimada == this.gananciaEstimada &&
          other.ventasPorCategoria == this.ventasPorCategoria &&
          other.totalTransacciones == this.totalTransacciones &&
          other.promedioVentaDiaria == this.promedioVentaDiaria &&
          other.diasActivos == this.diasActivos &&
          other.creditosPendientesCierre == this.creditosPendientesCierre &&
          other.cantidadCreditosPendientes == this.cantidadCreditosPendientes &&
          other.datosCompletos == this.datosCompletos &&
          other.generadoEl == this.generadoEl);
}

class ResumenMensualCompanion extends UpdateCompanion<ResumenMensualLocal> {
  final Value<String> id;
  final Value<String> pulperiaId;
  final Value<int> anio;
  final Value<int> mes;
  final Value<double> totalVentas;
  final Value<double> totalVentasContado;
  final Value<double> totalVentasCredito;
  final Value<double> totalCostos;
  final Value<double> gananciaEstimada;
  final Value<String> ventasPorCategoria;
  final Value<int> totalTransacciones;
  final Value<double> promedioVentaDiaria;
  final Value<int> diasActivos;
  final Value<double> creditosPendientesCierre;
  final Value<int> cantidadCreditosPendientes;
  final Value<bool> datosCompletos;
  final Value<DateTime> generadoEl;
  final Value<int> rowid;
  const ResumenMensualCompanion({
    this.id = const Value.absent(),
    this.pulperiaId = const Value.absent(),
    this.anio = const Value.absent(),
    this.mes = const Value.absent(),
    this.totalVentas = const Value.absent(),
    this.totalVentasContado = const Value.absent(),
    this.totalVentasCredito = const Value.absent(),
    this.totalCostos = const Value.absent(),
    this.gananciaEstimada = const Value.absent(),
    this.ventasPorCategoria = const Value.absent(),
    this.totalTransacciones = const Value.absent(),
    this.promedioVentaDiaria = const Value.absent(),
    this.diasActivos = const Value.absent(),
    this.creditosPendientesCierre = const Value.absent(),
    this.cantidadCreditosPendientes = const Value.absent(),
    this.datosCompletos = const Value.absent(),
    this.generadoEl = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ResumenMensualCompanion.insert({
    required String id,
    required String pulperiaId,
    required int anio,
    required int mes,
    this.totalVentas = const Value.absent(),
    this.totalVentasContado = const Value.absent(),
    this.totalVentasCredito = const Value.absent(),
    this.totalCostos = const Value.absent(),
    this.gananciaEstimada = const Value.absent(),
    this.ventasPorCategoria = const Value.absent(),
    this.totalTransacciones = const Value.absent(),
    this.promedioVentaDiaria = const Value.absent(),
    this.diasActivos = const Value.absent(),
    this.creditosPendientesCierre = const Value.absent(),
    this.cantidadCreditosPendientes = const Value.absent(),
    this.datosCompletos = const Value.absent(),
    this.generadoEl = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        pulperiaId = Value(pulperiaId),
        anio = Value(anio),
        mes = Value(mes);
  static Insertable<ResumenMensualLocal> custom({
    Expression<String>? id,
    Expression<String>? pulperiaId,
    Expression<int>? anio,
    Expression<int>? mes,
    Expression<double>? totalVentas,
    Expression<double>? totalVentasContado,
    Expression<double>? totalVentasCredito,
    Expression<double>? totalCostos,
    Expression<double>? gananciaEstimada,
    Expression<String>? ventasPorCategoria,
    Expression<int>? totalTransacciones,
    Expression<double>? promedioVentaDiaria,
    Expression<int>? diasActivos,
    Expression<double>? creditosPendientesCierre,
    Expression<int>? cantidadCreditosPendientes,
    Expression<bool>? datosCompletos,
    Expression<DateTime>? generadoEl,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pulperiaId != null) 'pulperia_id': pulperiaId,
      if (anio != null) 'anio': anio,
      if (mes != null) 'mes': mes,
      if (totalVentas != null) 'total_ventas': totalVentas,
      if (totalVentasContado != null)
        'total_ventas_contado': totalVentasContado,
      if (totalVentasCredito != null)
        'total_ventas_credito': totalVentasCredito,
      if (totalCostos != null) 'total_costos': totalCostos,
      if (gananciaEstimada != null) 'ganancia_estimada': gananciaEstimada,
      if (ventasPorCategoria != null)
        'ventas_por_categoria': ventasPorCategoria,
      if (totalTransacciones != null) 'total_transacciones': totalTransacciones,
      if (promedioVentaDiaria != null)
        'promedio_venta_diaria': promedioVentaDiaria,
      if (diasActivos != null) 'dias_activos': diasActivos,
      if (creditosPendientesCierre != null)
        'creditos_pendientes_cierre': creditosPendientesCierre,
      if (cantidadCreditosPendientes != null)
        'cantidad_creditos_pendientes': cantidadCreditosPendientes,
      if (datosCompletos != null) 'datos_completos': datosCompletos,
      if (generadoEl != null) 'generado_el': generadoEl,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ResumenMensualCompanion copyWith(
      {Value<String>? id,
      Value<String>? pulperiaId,
      Value<int>? anio,
      Value<int>? mes,
      Value<double>? totalVentas,
      Value<double>? totalVentasContado,
      Value<double>? totalVentasCredito,
      Value<double>? totalCostos,
      Value<double>? gananciaEstimada,
      Value<String>? ventasPorCategoria,
      Value<int>? totalTransacciones,
      Value<double>? promedioVentaDiaria,
      Value<int>? diasActivos,
      Value<double>? creditosPendientesCierre,
      Value<int>? cantidadCreditosPendientes,
      Value<bool>? datosCompletos,
      Value<DateTime>? generadoEl,
      Value<int>? rowid}) {
    return ResumenMensualCompanion(
      id: id ?? this.id,
      pulperiaId: pulperiaId ?? this.pulperiaId,
      anio: anio ?? this.anio,
      mes: mes ?? this.mes,
      totalVentas: totalVentas ?? this.totalVentas,
      totalVentasContado: totalVentasContado ?? this.totalVentasContado,
      totalVentasCredito: totalVentasCredito ?? this.totalVentasCredito,
      totalCostos: totalCostos ?? this.totalCostos,
      gananciaEstimada: gananciaEstimada ?? this.gananciaEstimada,
      ventasPorCategoria: ventasPorCategoria ?? this.ventasPorCategoria,
      totalTransacciones: totalTransacciones ?? this.totalTransacciones,
      promedioVentaDiaria: promedioVentaDiaria ?? this.promedioVentaDiaria,
      diasActivos: diasActivos ?? this.diasActivos,
      creditosPendientesCierre:
          creditosPendientesCierre ?? this.creditosPendientesCierre,
      cantidadCreditosPendientes:
          cantidadCreditosPendientes ?? this.cantidadCreditosPendientes,
      datosCompletos: datosCompletos ?? this.datosCompletos,
      generadoEl: generadoEl ?? this.generadoEl,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (pulperiaId.present) {
      map['pulperia_id'] = Variable<String>(pulperiaId.value);
    }
    if (anio.present) {
      map['anio'] = Variable<int>(anio.value);
    }
    if (mes.present) {
      map['mes'] = Variable<int>(mes.value);
    }
    if (totalVentas.present) {
      map['total_ventas'] = Variable<double>(totalVentas.value);
    }
    if (totalVentasContado.present) {
      map['total_ventas_contado'] = Variable<double>(totalVentasContado.value);
    }
    if (totalVentasCredito.present) {
      map['total_ventas_credito'] = Variable<double>(totalVentasCredito.value);
    }
    if (totalCostos.present) {
      map['total_costos'] = Variable<double>(totalCostos.value);
    }
    if (gananciaEstimada.present) {
      map['ganancia_estimada'] = Variable<double>(gananciaEstimada.value);
    }
    if (ventasPorCategoria.present) {
      map['ventas_por_categoria'] = Variable<String>(ventasPorCategoria.value);
    }
    if (totalTransacciones.present) {
      map['total_transacciones'] = Variable<int>(totalTransacciones.value);
    }
    if (promedioVentaDiaria.present) {
      map['promedio_venta_diaria'] =
          Variable<double>(promedioVentaDiaria.value);
    }
    if (diasActivos.present) {
      map['dias_activos'] = Variable<int>(diasActivos.value);
    }
    if (creditosPendientesCierre.present) {
      map['creditos_pendientes_cierre'] =
          Variable<double>(creditosPendientesCierre.value);
    }
    if (cantidadCreditosPendientes.present) {
      map['cantidad_creditos_pendientes'] =
          Variable<int>(cantidadCreditosPendientes.value);
    }
    if (datosCompletos.present) {
      map['datos_completos'] = Variable<bool>(datosCompletos.value);
    }
    if (generadoEl.present) {
      map['generado_el'] = Variable<DateTime>(generadoEl.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResumenMensualCompanion(')
          ..write('id: $id, ')
          ..write('pulperiaId: $pulperiaId, ')
          ..write('anio: $anio, ')
          ..write('mes: $mes, ')
          ..write('totalVentas: $totalVentas, ')
          ..write('totalVentasContado: $totalVentasContado, ')
          ..write('totalVentasCredito: $totalVentasCredito, ')
          ..write('totalCostos: $totalCostos, ')
          ..write('gananciaEstimada: $gananciaEstimada, ')
          ..write('ventasPorCategoria: $ventasPorCategoria, ')
          ..write('totalTransacciones: $totalTransacciones, ')
          ..write('promedioVentaDiaria: $promedioVentaDiaria, ')
          ..write('diasActivos: $diasActivos, ')
          ..write('creditosPendientesCierre: $creditosPendientesCierre, ')
          ..write('cantidadCreditosPendientes: $cantidadCreditosPendientes, ')
          ..write('datosCompletos: $datosCompletos, ')
          ..write('generadoEl: $generadoEl, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductosTable productos = $ProductosTable(this);
  late final $PulperiasTable pulperias = $PulperiasTable(this);
  late final $ClientesFiadoTable clientesFiado = $ClientesFiadoTable(this);
  late final $RegistrosTable registros = $RegistrosTable(this);
  late final $FiadosTable fiados = $FiadosTable(this);
  late final $ResumenMensualTable resumenMensual = $ResumenMensualTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [productos, pulperias, clientesFiado, registros, fiados, resumenMensual];
}

typedef $$ProductosTableCreateCompanionBuilder = ProductosCompanion Function({
  required String id,
  required String nombre,
  required String categoria,
  required String marca,
  required String tipoMedida,
  required String unidades,
  Value<bool> requierePeso,
  Value<bool> requiereInventarioDiario,
  Value<bool> activo,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$ProductosTableUpdateCompanionBuilder = ProductosCompanion Function({
  Value<String> id,
  Value<String> nombre,
  Value<String> categoria,
  Value<String> marca,
  Value<String> tipoMedida,
  Value<String> unidades,
  Value<bool> requierePeso,
  Value<bool> requiereInventarioDiario,
  Value<bool> activo,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$ProductosTableFilterComposer
    extends Composer<_$AppDatabase, $ProductosTable> {
  $$ProductosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nombre => $composableBuilder(
      column: $table.nombre, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoria => $composableBuilder(
      column: $table.categoria, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get marca => $composableBuilder(
      column: $table.marca, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tipoMedida => $composableBuilder(
      column: $table.tipoMedida, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get unidades => $composableBuilder(
      column: $table.unidades, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get requierePeso => $composableBuilder(
      column: $table.requierePeso, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get requiereInventarioDiario => $composableBuilder(
      column: $table.requiereInventarioDiario,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get activo => $composableBuilder(
      column: $table.activo, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$ProductosTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductosTable> {
  $$ProductosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nombre => $composableBuilder(
      column: $table.nombre, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoria => $composableBuilder(
      column: $table.categoria, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get marca => $composableBuilder(
      column: $table.marca, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tipoMedida => $composableBuilder(
      column: $table.tipoMedida, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get unidades => $composableBuilder(
      column: $table.unidades, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get requierePeso => $composableBuilder(
      column: $table.requierePeso,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get requiereInventarioDiario => $composableBuilder(
      column: $table.requiereInventarioDiario,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get activo => $composableBuilder(
      column: $table.activo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$ProductosTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductosTable> {
  $$ProductosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombre =>
      $composableBuilder(column: $table.nombre, builder: (column) => column);

  GeneratedColumn<String> get categoria =>
      $composableBuilder(column: $table.categoria, builder: (column) => column);

  GeneratedColumn<String> get marca =>
      $composableBuilder(column: $table.marca, builder: (column) => column);

  GeneratedColumn<String> get tipoMedida => $composableBuilder(
      column: $table.tipoMedida, builder: (column) => column);

  GeneratedColumn<String> get unidades =>
      $composableBuilder(column: $table.unidades, builder: (column) => column);

  GeneratedColumn<bool> get requierePeso => $composableBuilder(
      column: $table.requierePeso, builder: (column) => column);

  GeneratedColumn<bool> get requiereInventarioDiario => $composableBuilder(
      column: $table.requiereInventarioDiario, builder: (column) => column);

  GeneratedColumn<bool> get activo =>
      $composableBuilder(column: $table.activo, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$ProductosTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProductosTable,
    ProductoLocal,
    $$ProductosTableFilterComposer,
    $$ProductosTableOrderingComposer,
    $$ProductosTableAnnotationComposer,
    $$ProductosTableCreateCompanionBuilder,
    $$ProductosTableUpdateCompanionBuilder,
    (
      ProductoLocal,
      BaseReferences<_$AppDatabase, $ProductosTable, ProductoLocal>
    ),
    ProductoLocal,
    PrefetchHooks Function()> {
  $$ProductosTableTableManager(_$AppDatabase db, $ProductosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> nombre = const Value.absent(),
            Value<String> categoria = const Value.absent(),
            Value<String> marca = const Value.absent(),
            Value<String> tipoMedida = const Value.absent(),
            Value<String> unidades = const Value.absent(),
            Value<bool> requierePeso = const Value.absent(),
            Value<bool> requiereInventarioDiario = const Value.absent(),
            Value<bool> activo = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductosCompanion(
            id: id,
            nombre: nombre,
            categoria: categoria,
            marca: marca,
            tipoMedida: tipoMedida,
            unidades: unidades,
            requierePeso: requierePeso,
            requiereInventarioDiario: requiereInventarioDiario,
            activo: activo,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String nombre,
            required String categoria,
            required String marca,
            required String tipoMedida,
            required String unidades,
            Value<bool> requierePeso = const Value.absent(),
            Value<bool> requiereInventarioDiario = const Value.absent(),
            Value<bool> activo = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductosCompanion.insert(
            id: id,
            nombre: nombre,
            categoria: categoria,
            marca: marca,
            tipoMedida: tipoMedida,
            unidades: unidades,
            requierePeso: requierePeso,
            requiereInventarioDiario: requiereInventarioDiario,
            activo: activo,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProductosTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProductosTable,
    ProductoLocal,
    $$ProductosTableFilterComposer,
    $$ProductosTableOrderingComposer,
    $$ProductosTableAnnotationComposer,
    $$ProductosTableCreateCompanionBuilder,
    $$ProductosTableUpdateCompanionBuilder,
    (
      ProductoLocal,
      BaseReferences<_$AppDatabase, $ProductosTable, ProductoLocal>
    ),
    ProductoLocal,
    PrefetchHooks Function()>;
typedef $$PulperiasTableCreateCompanionBuilder = PulperiasCompanion Function({
  required String id,
  required String idPublico,
  Value<String?> nombreNegocio,
  required String nombreContacto,
  Value<String?> telefono,
  Value<String?> whatsapp,
  required String zonaId,
  Value<String?> direccionReferencia,
  Value<double?> latApprox,
  Value<double?> lngApprox,
  Value<String?> tipoLocal,
  Value<bool> tieneBalanza,
  Value<bool> activa,
  Value<DateTime> fechaRegistro,
  Value<String?> userId,
  Value<int> rowid,
});
typedef $$PulperiasTableUpdateCompanionBuilder = PulperiasCompanion Function({
  Value<String> id,
  Value<String> idPublico,
  Value<String?> nombreNegocio,
  Value<String> nombreContacto,
  Value<String?> telefono,
  Value<String?> whatsapp,
  Value<String> zonaId,
  Value<String?> direccionReferencia,
  Value<double?> latApprox,
  Value<double?> lngApprox,
  Value<String?> tipoLocal,
  Value<bool> tieneBalanza,
  Value<bool> activa,
  Value<DateTime> fechaRegistro,
  Value<String?> userId,
  Value<int> rowid,
});

class $$PulperiasTableFilterComposer
    extends Composer<_$AppDatabase, $PulperiasTable> {
  $$PulperiasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get idPublico => $composableBuilder(
      column: $table.idPublico, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nombreNegocio => $composableBuilder(
      column: $table.nombreNegocio, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nombreContacto => $composableBuilder(
      column: $table.nombreContacto,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get telefono => $composableBuilder(
      column: $table.telefono, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whatsapp => $composableBuilder(
      column: $table.whatsapp, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get zonaId => $composableBuilder(
      column: $table.zonaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get direccionReferencia => $composableBuilder(
      column: $table.direccionReferencia,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get latApprox => $composableBuilder(
      column: $table.latApprox, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get lngApprox => $composableBuilder(
      column: $table.lngApprox, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tipoLocal => $composableBuilder(
      column: $table.tipoLocal, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get tieneBalanza => $composableBuilder(
      column: $table.tieneBalanza, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get activa => $composableBuilder(
      column: $table.activa, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fechaRegistro => $composableBuilder(
      column: $table.fechaRegistro, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));
}

class $$PulperiasTableOrderingComposer
    extends Composer<_$AppDatabase, $PulperiasTable> {
  $$PulperiasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get idPublico => $composableBuilder(
      column: $table.idPublico, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nombreNegocio => $composableBuilder(
      column: $table.nombreNegocio,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nombreContacto => $composableBuilder(
      column: $table.nombreContacto,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get telefono => $composableBuilder(
      column: $table.telefono, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whatsapp => $composableBuilder(
      column: $table.whatsapp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get zonaId => $composableBuilder(
      column: $table.zonaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get direccionReferencia => $composableBuilder(
      column: $table.direccionReferencia,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get latApprox => $composableBuilder(
      column: $table.latApprox, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get lngApprox => $composableBuilder(
      column: $table.lngApprox, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tipoLocal => $composableBuilder(
      column: $table.tipoLocal, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get tieneBalanza => $composableBuilder(
      column: $table.tieneBalanza,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get activa => $composableBuilder(
      column: $table.activa, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fechaRegistro => $composableBuilder(
      column: $table.fechaRegistro,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));
}

class $$PulperiasTableAnnotationComposer
    extends Composer<_$AppDatabase, $PulperiasTable> {
  $$PulperiasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get idPublico =>
      $composableBuilder(column: $table.idPublico, builder: (column) => column);

  GeneratedColumn<String> get nombreNegocio => $composableBuilder(
      column: $table.nombreNegocio, builder: (column) => column);

  GeneratedColumn<String> get nombreContacto => $composableBuilder(
      column: $table.nombreContacto, builder: (column) => column);

  GeneratedColumn<String> get telefono =>
      $composableBuilder(column: $table.telefono, builder: (column) => column);

  GeneratedColumn<String> get whatsapp =>
      $composableBuilder(column: $table.whatsapp, builder: (column) => column);

  GeneratedColumn<String> get zonaId =>
      $composableBuilder(column: $table.zonaId, builder: (column) => column);

  GeneratedColumn<String> get direccionReferencia => $composableBuilder(
      column: $table.direccionReferencia, builder: (column) => column);

  GeneratedColumn<double> get latApprox =>
      $composableBuilder(column: $table.latApprox, builder: (column) => column);

  GeneratedColumn<double> get lngApprox =>
      $composableBuilder(column: $table.lngApprox, builder: (column) => column);

  GeneratedColumn<String> get tipoLocal =>
      $composableBuilder(column: $table.tipoLocal, builder: (column) => column);

  GeneratedColumn<bool> get tieneBalanza => $composableBuilder(
      column: $table.tieneBalanza, builder: (column) => column);

  GeneratedColumn<bool> get activa =>
      $composableBuilder(column: $table.activa, builder: (column) => column);

  GeneratedColumn<DateTime> get fechaRegistro => $composableBuilder(
      column: $table.fechaRegistro, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$PulperiasTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PulperiasTable,
    PulperiaLocal,
    $$PulperiasTableFilterComposer,
    $$PulperiasTableOrderingComposer,
    $$PulperiasTableAnnotationComposer,
    $$PulperiasTableCreateCompanionBuilder,
    $$PulperiasTableUpdateCompanionBuilder,
    (
      PulperiaLocal,
      BaseReferences<_$AppDatabase, $PulperiasTable, PulperiaLocal>
    ),
    PulperiaLocal,
    PrefetchHooks Function()> {
  $$PulperiasTableTableManager(_$AppDatabase db, $PulperiasTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PulperiasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PulperiasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PulperiasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> idPublico = const Value.absent(),
            Value<String?> nombreNegocio = const Value.absent(),
            Value<String> nombreContacto = const Value.absent(),
            Value<String?> telefono = const Value.absent(),
            Value<String?> whatsapp = const Value.absent(),
            Value<String> zonaId = const Value.absent(),
            Value<String?> direccionReferencia = const Value.absent(),
            Value<double?> latApprox = const Value.absent(),
            Value<double?> lngApprox = const Value.absent(),
            Value<String?> tipoLocal = const Value.absent(),
            Value<bool> tieneBalanza = const Value.absent(),
            Value<bool> activa = const Value.absent(),
            Value<DateTime> fechaRegistro = const Value.absent(),
            Value<String?> userId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PulperiasCompanion(
            id: id,
            idPublico: idPublico,
            nombreNegocio: nombreNegocio,
            nombreContacto: nombreContacto,
            telefono: telefono,
            whatsapp: whatsapp,
            zonaId: zonaId,
            direccionReferencia: direccionReferencia,
            latApprox: latApprox,
            lngApprox: lngApprox,
            tipoLocal: tipoLocal,
            tieneBalanza: tieneBalanza,
            activa: activa,
            fechaRegistro: fechaRegistro,
            userId: userId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String idPublico,
            Value<String?> nombreNegocio = const Value.absent(),
            required String nombreContacto,
            Value<String?> telefono = const Value.absent(),
            Value<String?> whatsapp = const Value.absent(),
            required String zonaId,
            Value<String?> direccionReferencia = const Value.absent(),
            Value<double?> latApprox = const Value.absent(),
            Value<double?> lngApprox = const Value.absent(),
            Value<String?> tipoLocal = const Value.absent(),
            Value<bool> tieneBalanza = const Value.absent(),
            Value<bool> activa = const Value.absent(),
            Value<DateTime> fechaRegistro = const Value.absent(),
            Value<String?> userId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PulperiasCompanion.insert(
            id: id,
            idPublico: idPublico,
            nombreNegocio: nombreNegocio,
            nombreContacto: nombreContacto,
            telefono: telefono,
            whatsapp: whatsapp,
            zonaId: zonaId,
            direccionReferencia: direccionReferencia,
            latApprox: latApprox,
            lngApprox: lngApprox,
            tipoLocal: tipoLocal,
            tieneBalanza: tieneBalanza,
            activa: activa,
            fechaRegistro: fechaRegistro,
            userId: userId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PulperiasTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PulperiasTable,
    PulperiaLocal,
    $$PulperiasTableFilterComposer,
    $$PulperiasTableOrderingComposer,
    $$PulperiasTableAnnotationComposer,
    $$PulperiasTableCreateCompanionBuilder,
    $$PulperiasTableUpdateCompanionBuilder,
    (
      PulperiaLocal,
      BaseReferences<_$AppDatabase, $PulperiasTable, PulperiaLocal>
    ),
    PulperiaLocal,
    PrefetchHooks Function()>;
typedef $$ClientesFiadoTableCreateCompanionBuilder = ClientesFiadoCompanion
    Function({
  required String id,
  required String pulperiaId,
  required String nombre,
  Value<String?> apodo,
  Value<String?> telefono,
  Value<double> limiteFiado,
  Value<double> saldoActual,
  Value<String> estado,
  Value<int> nivelConfianza,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$ClientesFiadoTableUpdateCompanionBuilder = ClientesFiadoCompanion
    Function({
  Value<String> id,
  Value<String> pulperiaId,
  Value<String> nombre,
  Value<String?> apodo,
  Value<String?> telefono,
  Value<double> limiteFiado,
  Value<double> saldoActual,
  Value<String> estado,
  Value<int> nivelConfianza,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$ClientesFiadoTableFilterComposer
    extends Composer<_$AppDatabase, $ClientesFiadoTable> {
  $$ClientesFiadoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nombre => $composableBuilder(
      column: $table.nombre, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get apodo => $composableBuilder(
      column: $table.apodo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get telefono => $composableBuilder(
      column: $table.telefono, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get limiteFiado => $composableBuilder(
      column: $table.limiteFiado, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get saldoActual => $composableBuilder(
      column: $table.saldoActual, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get estado => $composableBuilder(
      column: $table.estado, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get nivelConfianza => $composableBuilder(
      column: $table.nivelConfianza,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$ClientesFiadoTableOrderingComposer
    extends Composer<_$AppDatabase, $ClientesFiadoTable> {
  $$ClientesFiadoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nombre => $composableBuilder(
      column: $table.nombre, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get apodo => $composableBuilder(
      column: $table.apodo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get telefono => $composableBuilder(
      column: $table.telefono, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get limiteFiado => $composableBuilder(
      column: $table.limiteFiado, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get saldoActual => $composableBuilder(
      column: $table.saldoActual, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get estado => $composableBuilder(
      column: $table.estado, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get nivelConfianza => $composableBuilder(
      column: $table.nivelConfianza,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$ClientesFiadoTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClientesFiadoTable> {
  $$ClientesFiadoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => column);

  GeneratedColumn<String> get nombre =>
      $composableBuilder(column: $table.nombre, builder: (column) => column);

  GeneratedColumn<String> get apodo =>
      $composableBuilder(column: $table.apodo, builder: (column) => column);

  GeneratedColumn<String> get telefono =>
      $composableBuilder(column: $table.telefono, builder: (column) => column);

  GeneratedColumn<double> get limiteFiado => $composableBuilder(
      column: $table.limiteFiado, builder: (column) => column);

  GeneratedColumn<double> get saldoActual => $composableBuilder(
      column: $table.saldoActual, builder: (column) => column);

  GeneratedColumn<String> get estado =>
      $composableBuilder(column: $table.estado, builder: (column) => column);

  GeneratedColumn<int> get nivelConfianza => $composableBuilder(
      column: $table.nivelConfianza, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$ClientesFiadoTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ClientesFiadoTable,
    ClienteFiadoLocal,
    $$ClientesFiadoTableFilterComposer,
    $$ClientesFiadoTableOrderingComposer,
    $$ClientesFiadoTableAnnotationComposer,
    $$ClientesFiadoTableCreateCompanionBuilder,
    $$ClientesFiadoTableUpdateCompanionBuilder,
    (
      ClienteFiadoLocal,
      BaseReferences<_$AppDatabase, $ClientesFiadoTable, ClienteFiadoLocal>
    ),
    ClienteFiadoLocal,
    PrefetchHooks Function()> {
  $$ClientesFiadoTableTableManager(_$AppDatabase db, $ClientesFiadoTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientesFiadoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientesFiadoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientesFiadoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> pulperiaId = const Value.absent(),
            Value<String> nombre = const Value.absent(),
            Value<String?> apodo = const Value.absent(),
            Value<String?> telefono = const Value.absent(),
            Value<double> limiteFiado = const Value.absent(),
            Value<double> saldoActual = const Value.absent(),
            Value<String> estado = const Value.absent(),
            Value<int> nivelConfianza = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ClientesFiadoCompanion(
            id: id,
            pulperiaId: pulperiaId,
            nombre: nombre,
            apodo: apodo,
            telefono: telefono,
            limiteFiado: limiteFiado,
            saldoActual: saldoActual,
            estado: estado,
            nivelConfianza: nivelConfianza,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String pulperiaId,
            required String nombre,
            Value<String?> apodo = const Value.absent(),
            Value<String?> telefono = const Value.absent(),
            Value<double> limiteFiado = const Value.absent(),
            Value<double> saldoActual = const Value.absent(),
            Value<String> estado = const Value.absent(),
            Value<int> nivelConfianza = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ClientesFiadoCompanion.insert(
            id: id,
            pulperiaId: pulperiaId,
            nombre: nombre,
            apodo: apodo,
            telefono: telefono,
            limiteFiado: limiteFiado,
            saldoActual: saldoActual,
            estado: estado,
            nivelConfianza: nivelConfianza,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ClientesFiadoTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ClientesFiadoTable,
    ClienteFiadoLocal,
    $$ClientesFiadoTableFilterComposer,
    $$ClientesFiadoTableOrderingComposer,
    $$ClientesFiadoTableAnnotationComposer,
    $$ClientesFiadoTableCreateCompanionBuilder,
    $$ClientesFiadoTableUpdateCompanionBuilder,
    (
      ClienteFiadoLocal,
      BaseReferences<_$AppDatabase, $ClientesFiadoTable, ClienteFiadoLocal>
    ),
    ClienteFiadoLocal,
    PrefetchHooks Function()>;
typedef $$RegistrosTableCreateCompanionBuilder = RegistrosCompanion Function({
  required String id,
  required String pulperiaId,
  Value<String?> productoId,
  required String tipo,
  Value<double?> cantidad,
  Value<double?> unidadPrincipal,
  Value<double?> unidadSecundaria,
  Value<double?> precioCosto,
  Value<double?> precioVenta,
  required DateTime fechaHora,
  Value<bool> esCorte,
  Value<int> numeroCorte,
  Value<String> contexto,
  Value<bool> sincronizado,
  Value<DateTime?> fechaSincronizacion,
  Value<String?> errorSync,
  Value<double?> gpsLat,
  Value<double?> gpsLng,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$RegistrosTableUpdateCompanionBuilder = RegistrosCompanion Function({
  Value<String> id,
  Value<String> pulperiaId,
  Value<String?> productoId,
  Value<String> tipo,
  Value<double?> cantidad,
  Value<double?> unidadPrincipal,
  Value<double?> unidadSecundaria,
  Value<double?> precioCosto,
  Value<double?> precioVenta,
  Value<DateTime> fechaHora,
  Value<bool> esCorte,
  Value<int> numeroCorte,
  Value<String> contexto,
  Value<bool> sincronizado,
  Value<DateTime?> fechaSincronizacion,
  Value<String?> errorSync,
  Value<double?> gpsLat,
  Value<double?> gpsLng,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

class $$RegistrosTableFilterComposer
    extends Composer<_$AppDatabase, $RegistrosTable> {
  $$RegistrosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productoId => $composableBuilder(
      column: $table.productoId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tipo => $composableBuilder(
      column: $table.tipo, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cantidad => $composableBuilder(
      column: $table.cantidad, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unidadPrincipal => $composableBuilder(
      column: $table.unidadPrincipal,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unidadSecundaria => $composableBuilder(
      column: $table.unidadSecundaria,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get precioCosto => $composableBuilder(
      column: $table.precioCosto, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get precioVenta => $composableBuilder(
      column: $table.precioVenta, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fechaHora => $composableBuilder(
      column: $table.fechaHora, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get esCorte => $composableBuilder(
      column: $table.esCorte, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get numeroCorte => $composableBuilder(
      column: $table.numeroCorte, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contexto => $composableBuilder(
      column: $table.contexto, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get sincronizado => $composableBuilder(
      column: $table.sincronizado, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fechaSincronizacion => $composableBuilder(
      column: $table.fechaSincronizacion,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get errorSync => $composableBuilder(
      column: $table.errorSync, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get gpsLat => $composableBuilder(
      column: $table.gpsLat, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get gpsLng => $composableBuilder(
      column: $table.gpsLng, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$RegistrosTableOrderingComposer
    extends Composer<_$AppDatabase, $RegistrosTable> {
  $$RegistrosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productoId => $composableBuilder(
      column: $table.productoId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tipo => $composableBuilder(
      column: $table.tipo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cantidad => $composableBuilder(
      column: $table.cantidad, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unidadPrincipal => $composableBuilder(
      column: $table.unidadPrincipal,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unidadSecundaria => $composableBuilder(
      column: $table.unidadSecundaria,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get precioCosto => $composableBuilder(
      column: $table.precioCosto, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get precioVenta => $composableBuilder(
      column: $table.precioVenta, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fechaHora => $composableBuilder(
      column: $table.fechaHora, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get esCorte => $composableBuilder(
      column: $table.esCorte, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get numeroCorte => $composableBuilder(
      column: $table.numeroCorte, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contexto => $composableBuilder(
      column: $table.contexto, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get sincronizado => $composableBuilder(
      column: $table.sincronizado,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fechaSincronizacion => $composableBuilder(
      column: $table.fechaSincronizacion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get errorSync => $composableBuilder(
      column: $table.errorSync, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get gpsLat => $composableBuilder(
      column: $table.gpsLat, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get gpsLng => $composableBuilder(
      column: $table.gpsLng, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$RegistrosTableAnnotationComposer
    extends Composer<_$AppDatabase, $RegistrosTable> {
  $$RegistrosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => column);

  GeneratedColumn<String> get productoId => $composableBuilder(
      column: $table.productoId, builder: (column) => column);

  GeneratedColumn<String> get tipo =>
      $composableBuilder(column: $table.tipo, builder: (column) => column);

  GeneratedColumn<double> get cantidad =>
      $composableBuilder(column: $table.cantidad, builder: (column) => column);

  GeneratedColumn<double> get unidadPrincipal => $composableBuilder(
      column: $table.unidadPrincipal, builder: (column) => column);

  GeneratedColumn<double> get unidadSecundaria => $composableBuilder(
      column: $table.unidadSecundaria, builder: (column) => column);

  GeneratedColumn<double> get precioCosto => $composableBuilder(
      column: $table.precioCosto, builder: (column) => column);

  GeneratedColumn<double> get precioVenta => $composableBuilder(
      column: $table.precioVenta, builder: (column) => column);

  GeneratedColumn<DateTime> get fechaHora =>
      $composableBuilder(column: $table.fechaHora, builder: (column) => column);

  GeneratedColumn<bool> get esCorte =>
      $composableBuilder(column: $table.esCorte, builder: (column) => column);

  GeneratedColumn<int> get numeroCorte => $composableBuilder(
      column: $table.numeroCorte, builder: (column) => column);

  GeneratedColumn<String> get contexto =>
      $composableBuilder(column: $table.contexto, builder: (column) => column);

  GeneratedColumn<bool> get sincronizado => $composableBuilder(
      column: $table.sincronizado, builder: (column) => column);

  GeneratedColumn<DateTime> get fechaSincronizacion => $composableBuilder(
      column: $table.fechaSincronizacion, builder: (column) => column);

  GeneratedColumn<String> get errorSync =>
      $composableBuilder(column: $table.errorSync, builder: (column) => column);

  GeneratedColumn<double> get gpsLat =>
      $composableBuilder(column: $table.gpsLat, builder: (column) => column);

  GeneratedColumn<double> get gpsLng =>
      $composableBuilder(column: $table.gpsLng, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$RegistrosTableTableManager extends RootTableManager<
    _$AppDatabase,
    $RegistrosTable,
    RegistroLocal,
    $$RegistrosTableFilterComposer,
    $$RegistrosTableOrderingComposer,
    $$RegistrosTableAnnotationComposer,
    $$RegistrosTableCreateCompanionBuilder,
    $$RegistrosTableUpdateCompanionBuilder,
    (
      RegistroLocal,
      BaseReferences<_$AppDatabase, $RegistrosTable, RegistroLocal>
    ),
    RegistroLocal,
    PrefetchHooks Function()> {
  $$RegistrosTableTableManager(_$AppDatabase db, $RegistrosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RegistrosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RegistrosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RegistrosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> pulperiaId = const Value.absent(),
            Value<String?> productoId = const Value.absent(),
            Value<String> tipo = const Value.absent(),
            Value<double?> cantidad = const Value.absent(),
            Value<double?> unidadPrincipal = const Value.absent(),
            Value<double?> unidadSecundaria = const Value.absent(),
            Value<double?> precioCosto = const Value.absent(),
            Value<double?> precioVenta = const Value.absent(),
            Value<DateTime> fechaHora = const Value.absent(),
            Value<bool> esCorte = const Value.absent(),
            Value<int> numeroCorte = const Value.absent(),
            Value<String> contexto = const Value.absent(),
            Value<bool> sincronizado = const Value.absent(),
            Value<DateTime?> fechaSincronizacion = const Value.absent(),
            Value<String?> errorSync = const Value.absent(),
            Value<double?> gpsLat = const Value.absent(),
            Value<double?> gpsLng = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RegistrosCompanion(
            id: id,
            pulperiaId: pulperiaId,
            productoId: productoId,
            tipo: tipo,
            cantidad: cantidad,
            unidadPrincipal: unidadPrincipal,
            unidadSecundaria: unidadSecundaria,
            precioCosto: precioCosto,
            precioVenta: precioVenta,
            fechaHora: fechaHora,
            esCorte: esCorte,
            numeroCorte: numeroCorte,
            contexto: contexto,
            sincronizado: sincronizado,
            fechaSincronizacion: fechaSincronizacion,
            errorSync: errorSync,
            gpsLat: gpsLat,
            gpsLng: gpsLng,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String pulperiaId,
            Value<String?> productoId = const Value.absent(),
            required String tipo,
            Value<double?> cantidad = const Value.absent(),
            Value<double?> unidadPrincipal = const Value.absent(),
            Value<double?> unidadSecundaria = const Value.absent(),
            Value<double?> precioCosto = const Value.absent(),
            Value<double?> precioVenta = const Value.absent(),
            required DateTime fechaHora,
            Value<bool> esCorte = const Value.absent(),
            Value<int> numeroCorte = const Value.absent(),
            Value<String> contexto = const Value.absent(),
            Value<bool> sincronizado = const Value.absent(),
            Value<DateTime?> fechaSincronizacion = const Value.absent(),
            Value<String?> errorSync = const Value.absent(),
            Value<double?> gpsLat = const Value.absent(),
            Value<double?> gpsLng = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RegistrosCompanion.insert(
            id: id,
            pulperiaId: pulperiaId,
            productoId: productoId,
            tipo: tipo,
            cantidad: cantidad,
            unidadPrincipal: unidadPrincipal,
            unidadSecundaria: unidadSecundaria,
            precioCosto: precioCosto,
            precioVenta: precioVenta,
            fechaHora: fechaHora,
            esCorte: esCorte,
            numeroCorte: numeroCorte,
            contexto: contexto,
            sincronizado: sincronizado,
            fechaSincronizacion: fechaSincronizacion,
            errorSync: errorSync,
            gpsLat: gpsLat,
            gpsLng: gpsLng,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RegistrosTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $RegistrosTable,
    RegistroLocal,
    $$RegistrosTableFilterComposer,
    $$RegistrosTableOrderingComposer,
    $$RegistrosTableAnnotationComposer,
    $$RegistrosTableCreateCompanionBuilder,
    $$RegistrosTableUpdateCompanionBuilder,
    (
      RegistroLocal,
      BaseReferences<_$AppDatabase, $RegistrosTable, RegistroLocal>
    ),
    RegistroLocal,
    PrefetchHooks Function()>;
typedef $$FiadosTableCreateCompanionBuilder = FiadosCompanion Function({
  required String id,
  required String pulperiaId,
  required String clienteId,
  Value<String?> registroVentaId,
  required double montoOriginal,
  required double saldoPendiente,
  Value<String> pagos,
  required DateTime fechaFiado,
  Value<DateTime?> fechaVencimiento,
  Value<String> estado,
  Value<DateTime?> ultimoPagoFecha,
  Value<double?> ultimoPagoMonto,
  Value<bool> sincronizado,
  Value<bool> archivado,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});
typedef $$FiadosTableUpdateCompanionBuilder = FiadosCompanion Function({
  Value<String> id,
  Value<String> pulperiaId,
  Value<String> clienteId,
  Value<String?> registroVentaId,
  Value<double> montoOriginal,
  Value<double> saldoPendiente,
  Value<String> pagos,
  Value<DateTime> fechaFiado,
  Value<DateTime?> fechaVencimiento,
  Value<String> estado,
  Value<DateTime?> ultimoPagoFecha,
  Value<double?> ultimoPagoMonto,
  Value<bool> sincronizado,
  Value<bool> archivado,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

class $$FiadosTableFilterComposer
    extends Composer<_$AppDatabase, $FiadosTable> {
  $$FiadosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get clienteId => $composableBuilder(
      column: $table.clienteId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get registroVentaId => $composableBuilder(
      column: $table.registroVentaId,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get montoOriginal => $composableBuilder(
      column: $table.montoOriginal, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get saldoPendiente => $composableBuilder(
      column: $table.saldoPendiente,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pagos => $composableBuilder(
      column: $table.pagos, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fechaFiado => $composableBuilder(
      column: $table.fechaFiado, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fechaVencimiento => $composableBuilder(
      column: $table.fechaVencimiento,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get estado => $composableBuilder(
      column: $table.estado, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get ultimoPagoFecha => $composableBuilder(
      column: $table.ultimoPagoFecha,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get ultimoPagoMonto => $composableBuilder(
      column: $table.ultimoPagoMonto,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get sincronizado => $composableBuilder(
      column: $table.sincronizado, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get archivado => $composableBuilder(
      column: $table.archivado, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$FiadosTableOrderingComposer
    extends Composer<_$AppDatabase, $FiadosTable> {
  $$FiadosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get clienteId => $composableBuilder(
      column: $table.clienteId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get registroVentaId => $composableBuilder(
      column: $table.registroVentaId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get montoOriginal => $composableBuilder(
      column: $table.montoOriginal,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get saldoPendiente => $composableBuilder(
      column: $table.saldoPendiente,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pagos => $composableBuilder(
      column: $table.pagos, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fechaFiado => $composableBuilder(
      column: $table.fechaFiado, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fechaVencimiento => $composableBuilder(
      column: $table.fechaVencimiento,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get estado => $composableBuilder(
      column: $table.estado, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get ultimoPagoFecha => $composableBuilder(
      column: $table.ultimoPagoFecha,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get ultimoPagoMonto => $composableBuilder(
      column: $table.ultimoPagoMonto,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get sincronizado => $composableBuilder(
      column: $table.sincronizado,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get archivado => $composableBuilder(
      column: $table.archivado, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$FiadosTableAnnotationComposer
    extends Composer<_$AppDatabase, $FiadosTable> {
  $$FiadosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => column);

  GeneratedColumn<String> get clienteId =>
      $composableBuilder(column: $table.clienteId, builder: (column) => column);

  GeneratedColumn<String> get registroVentaId => $composableBuilder(
      column: $table.registroVentaId, builder: (column) => column);

  GeneratedColumn<double> get montoOriginal => $composableBuilder(
      column: $table.montoOriginal, builder: (column) => column);

  GeneratedColumn<double> get saldoPendiente => $composableBuilder(
      column: $table.saldoPendiente, builder: (column) => column);

  GeneratedColumn<String> get pagos =>
      $composableBuilder(column: $table.pagos, builder: (column) => column);

  GeneratedColumn<DateTime> get fechaFiado => $composableBuilder(
      column: $table.fechaFiado, builder: (column) => column);

  GeneratedColumn<DateTime> get fechaVencimiento => $composableBuilder(
      column: $table.fechaVencimiento, builder: (column) => column);

  GeneratedColumn<String> get estado =>
      $composableBuilder(column: $table.estado, builder: (column) => column);

  GeneratedColumn<DateTime> get ultimoPagoFecha => $composableBuilder(
      column: $table.ultimoPagoFecha, builder: (column) => column);

  GeneratedColumn<double> get ultimoPagoMonto => $composableBuilder(
      column: $table.ultimoPagoMonto, builder: (column) => column);

  GeneratedColumn<bool> get sincronizado => $composableBuilder(
      column: $table.sincronizado, builder: (column) => column);

  GeneratedColumn<bool> get archivado =>
      $composableBuilder(column: $table.archivado, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$FiadosTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FiadosTable,
    FiadoLocal,
    $$FiadosTableFilterComposer,
    $$FiadosTableOrderingComposer,
    $$FiadosTableAnnotationComposer,
    $$FiadosTableCreateCompanionBuilder,
    $$FiadosTableUpdateCompanionBuilder,
    (FiadoLocal, BaseReferences<_$AppDatabase, $FiadosTable, FiadoLocal>),
    FiadoLocal,
    PrefetchHooks Function()> {
  $$FiadosTableTableManager(_$AppDatabase db, $FiadosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FiadosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FiadosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FiadosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> pulperiaId = const Value.absent(),
            Value<String> clienteId = const Value.absent(),
            Value<String?> registroVentaId = const Value.absent(),
            Value<double> montoOriginal = const Value.absent(),
            Value<double> saldoPendiente = const Value.absent(),
            Value<String> pagos = const Value.absent(),
            Value<DateTime> fechaFiado = const Value.absent(),
            Value<DateTime?> fechaVencimiento = const Value.absent(),
            Value<String> estado = const Value.absent(),
            Value<DateTime?> ultimoPagoFecha = const Value.absent(),
            Value<double?> ultimoPagoMonto = const Value.absent(),
            Value<bool> sincronizado = const Value.absent(),
            Value<bool> archivado = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FiadosCompanion(
            id: id,
            pulperiaId: pulperiaId,
            clienteId: clienteId,
            registroVentaId: registroVentaId,
            montoOriginal: montoOriginal,
            saldoPendiente: saldoPendiente,
            pagos: pagos,
            fechaFiado: fechaFiado,
            fechaVencimiento: fechaVencimiento,
            estado: estado,
            ultimoPagoFecha: ultimoPagoFecha,
            ultimoPagoMonto: ultimoPagoMonto,
            sincronizado: sincronizado,
            archivado: archivado,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String pulperiaId,
            required String clienteId,
            Value<String?> registroVentaId = const Value.absent(),
            required double montoOriginal,
            required double saldoPendiente,
            Value<String> pagos = const Value.absent(),
            required DateTime fechaFiado,
            Value<DateTime?> fechaVencimiento = const Value.absent(),
            Value<String> estado = const Value.absent(),
            Value<DateTime?> ultimoPagoFecha = const Value.absent(),
            Value<double?> ultimoPagoMonto = const Value.absent(),
            Value<bool> sincronizado = const Value.absent(),
            Value<bool> archivado = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FiadosCompanion.insert(
            id: id,
            pulperiaId: pulperiaId,
            clienteId: clienteId,
            registroVentaId: registroVentaId,
            montoOriginal: montoOriginal,
            saldoPendiente: saldoPendiente,
            pagos: pagos,
            fechaFiado: fechaFiado,
            fechaVencimiento: fechaVencimiento,
            estado: estado,
            ultimoPagoFecha: ultimoPagoFecha,
            ultimoPagoMonto: ultimoPagoMonto,
            sincronizado: sincronizado,
            archivado: archivado,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FiadosTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FiadosTable,
    FiadoLocal,
    $$FiadosTableFilterComposer,
    $$FiadosTableOrderingComposer,
    $$FiadosTableAnnotationComposer,
    $$FiadosTableCreateCompanionBuilder,
    $$FiadosTableUpdateCompanionBuilder,
    (FiadoLocal, BaseReferences<_$AppDatabase, $FiadosTable, FiadoLocal>),
    FiadoLocal,
    PrefetchHooks Function()>;
typedef $$ResumenMensualTableCreateCompanionBuilder = ResumenMensualCompanion
    Function({
  required String id,
  required String pulperiaId,
  required int anio,
  required int mes,
  Value<double> totalVentas,
  Value<double> totalVentasContado,
  Value<double> totalVentasCredito,
  Value<double> totalCostos,
  Value<double> gananciaEstimada,
  Value<String> ventasPorCategoria,
  Value<int> totalTransacciones,
  Value<double> promedioVentaDiaria,
  Value<int> diasActivos,
  Value<double> creditosPendientesCierre,
  Value<int> cantidadCreditosPendientes,
  Value<bool> datosCompletos,
  Value<DateTime> generadoEl,
  Value<int> rowid,
});
typedef $$ResumenMensualTableUpdateCompanionBuilder = ResumenMensualCompanion
    Function({
  Value<String> id,
  Value<String> pulperiaId,
  Value<int> anio,
  Value<int> mes,
  Value<double> totalVentas,
  Value<double> totalVentasContado,
  Value<double> totalVentasCredito,
  Value<double> totalCostos,
  Value<double> gananciaEstimada,
  Value<String> ventasPorCategoria,
  Value<int> totalTransacciones,
  Value<double> promedioVentaDiaria,
  Value<int> diasActivos,
  Value<double> creditosPendientesCierre,
  Value<int> cantidadCreditosPendientes,
  Value<bool> datosCompletos,
  Value<DateTime> generadoEl,
  Value<int> rowid,
});

class $$ResumenMensualTableFilterComposer
    extends Composer<_$AppDatabase, $ResumenMensualTable> {
  $$ResumenMensualTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get anio => $composableBuilder(
      column: $table.anio, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get mes => $composableBuilder(
      column: $table.mes, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalVentas => $composableBuilder(
      column: $table.totalVentas, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalVentasContado => $composableBuilder(
      column: $table.totalVentasContado,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalVentasCredito => $composableBuilder(
      column: $table.totalVentasCredito,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalCostos => $composableBuilder(
      column: $table.totalCostos, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get gananciaEstimada => $composableBuilder(
      column: $table.gananciaEstimada,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ventasPorCategoria => $composableBuilder(
      column: $table.ventasPorCategoria,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalTransacciones => $composableBuilder(
      column: $table.totalTransacciones,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get promedioVentaDiaria => $composableBuilder(
      column: $table.promedioVentaDiaria,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get diasActivos => $composableBuilder(
      column: $table.diasActivos, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get creditosPendientesCierre => $composableBuilder(
      column: $table.creditosPendientesCierre,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get cantidadCreditosPendientes => $composableBuilder(
      column: $table.cantidadCreditosPendientes,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get datosCompletos => $composableBuilder(
      column: $table.datosCompletos,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get generadoEl => $composableBuilder(
      column: $table.generadoEl, builder: (column) => ColumnFilters(column));
}

class $$ResumenMensualTableOrderingComposer
    extends Composer<_$AppDatabase, $ResumenMensualTable> {
  $$ResumenMensualTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get anio => $composableBuilder(
      column: $table.anio, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get mes => $composableBuilder(
      column: $table.mes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalVentas => $composableBuilder(
      column: $table.totalVentas, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalVentasContado => $composableBuilder(
      column: $table.totalVentasContado,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalVentasCredito => $composableBuilder(
      column: $table.totalVentasCredito,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalCostos => $composableBuilder(
      column: $table.totalCostos, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get gananciaEstimada => $composableBuilder(
      column: $table.gananciaEstimada,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ventasPorCategoria => $composableBuilder(
      column: $table.ventasPorCategoria,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalTransacciones => $composableBuilder(
      column: $table.totalTransacciones,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get promedioVentaDiaria => $composableBuilder(
      column: $table.promedioVentaDiaria,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get diasActivos => $composableBuilder(
      column: $table.diasActivos, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get creditosPendientesCierre => $composableBuilder(
      column: $table.creditosPendientesCierre,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get cantidadCreditosPendientes => $composableBuilder(
      column: $table.cantidadCreditosPendientes,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get datosCompletos => $composableBuilder(
      column: $table.datosCompletos,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get generadoEl => $composableBuilder(
      column: $table.generadoEl, builder: (column) => ColumnOrderings(column));
}

class $$ResumenMensualTableAnnotationComposer
    extends Composer<_$AppDatabase, $ResumenMensualTable> {
  $$ResumenMensualTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get pulperiaId => $composableBuilder(
      column: $table.pulperiaId, builder: (column) => column);

  GeneratedColumn<int> get anio =>
      $composableBuilder(column: $table.anio, builder: (column) => column);

  GeneratedColumn<int> get mes =>
      $composableBuilder(column: $table.mes, builder: (column) => column);

  GeneratedColumn<double> get totalVentas => $composableBuilder(
      column: $table.totalVentas, builder: (column) => column);

  GeneratedColumn<double> get totalVentasContado => $composableBuilder(
      column: $table.totalVentasContado, builder: (column) => column);

  GeneratedColumn<double> get totalVentasCredito => $composableBuilder(
      column: $table.totalVentasCredito, builder: (column) => column);

  GeneratedColumn<double> get totalCostos => $composableBuilder(
      column: $table.totalCostos, builder: (column) => column);

  GeneratedColumn<double> get gananciaEstimada => $composableBuilder(
      column: $table.gananciaEstimada, builder: (column) => column);

  GeneratedColumn<String> get ventasPorCategoria => $composableBuilder(
      column: $table.ventasPorCategoria, builder: (column) => column);

  GeneratedColumn<int> get totalTransacciones => $composableBuilder(
      column: $table.totalTransacciones, builder: (column) => column);

  GeneratedColumn<double> get promedioVentaDiaria => $composableBuilder(
      column: $table.promedioVentaDiaria, builder: (column) => column);

  GeneratedColumn<int> get diasActivos => $composableBuilder(
      column: $table.diasActivos, builder: (column) => column);

  GeneratedColumn<double> get creditosPendientesCierre => $composableBuilder(
      column: $table.creditosPendientesCierre, builder: (column) => column);

  GeneratedColumn<int> get cantidadCreditosPendientes => $composableBuilder(
      column: $table.cantidadCreditosPendientes, builder: (column) => column);

  GeneratedColumn<bool> get datosCompletos => $composableBuilder(
      column: $table.datosCompletos, builder: (column) => column);

  GeneratedColumn<DateTime> get generadoEl => $composableBuilder(
      column: $table.generadoEl, builder: (column) => column);
}

class $$ResumenMensualTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ResumenMensualTable,
    ResumenMensualLocal,
    $$ResumenMensualTableFilterComposer,
    $$ResumenMensualTableOrderingComposer,
    $$ResumenMensualTableAnnotationComposer,
    $$ResumenMensualTableCreateCompanionBuilder,
    $$ResumenMensualTableUpdateCompanionBuilder,
    (
      ResumenMensualLocal,
      BaseReferences<_$AppDatabase, $ResumenMensualTable, ResumenMensualLocal>
    ),
    ResumenMensualLocal,
    PrefetchHooks Function()> {
  $$ResumenMensualTableTableManager(
      _$AppDatabase db, $ResumenMensualTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ResumenMensualTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ResumenMensualTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ResumenMensualTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> pulperiaId = const Value.absent(),
            Value<int> anio = const Value.absent(),
            Value<int> mes = const Value.absent(),
            Value<double> totalVentas = const Value.absent(),
            Value<double> totalVentasContado = const Value.absent(),
            Value<double> totalVentasCredito = const Value.absent(),
            Value<double> totalCostos = const Value.absent(),
            Value<double> gananciaEstimada = const Value.absent(),
            Value<String> ventasPorCategoria = const Value.absent(),
            Value<int> totalTransacciones = const Value.absent(),
            Value<double> promedioVentaDiaria = const Value.absent(),
            Value<int> diasActivos = const Value.absent(),
            Value<double> creditosPendientesCierre = const Value.absent(),
            Value<int> cantidadCreditosPendientes = const Value.absent(),
            Value<bool> datosCompletos = const Value.absent(),
            Value<DateTime> generadoEl = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResumenMensualCompanion(
            id: id,
            pulperiaId: pulperiaId,
            anio: anio,
            mes: mes,
            totalVentas: totalVentas,
            totalVentasContado: totalVentasContado,
            totalVentasCredito: totalVentasCredito,
            totalCostos: totalCostos,
            gananciaEstimada: gananciaEstimada,
            ventasPorCategoria: ventasPorCategoria,
            totalTransacciones: totalTransacciones,
            promedioVentaDiaria: promedioVentaDiaria,
            diasActivos: diasActivos,
            creditosPendientesCierre: creditosPendientesCierre,
            cantidadCreditosPendientes: cantidadCreditosPendientes,
            datosCompletos: datosCompletos,
            generadoEl: generadoEl,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String pulperiaId,
            required int anio,
            required int mes,
            Value<double> totalVentas = const Value.absent(),
            Value<double> totalVentasContado = const Value.absent(),
            Value<double> totalVentasCredito = const Value.absent(),
            Value<double> totalCostos = const Value.absent(),
            Value<double> gananciaEstimada = const Value.absent(),
            Value<String> ventasPorCategoria = const Value.absent(),
            Value<int> totalTransacciones = const Value.absent(),
            Value<double> promedioVentaDiaria = const Value.absent(),
            Value<int> diasActivos = const Value.absent(),
            Value<double> creditosPendientesCierre = const Value.absent(),
            Value<int> cantidadCreditosPendientes = const Value.absent(),
            Value<bool> datosCompletos = const Value.absent(),
            Value<DateTime> generadoEl = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ResumenMensualCompanion.insert(
            id: id,
            pulperiaId: pulperiaId,
            anio: anio,
            mes: mes,
            totalVentas: totalVentas,
            totalVentasContado: totalVentasContado,
            totalVentasCredito: totalVentasCredito,
            totalCostos: totalCostos,
            gananciaEstimada: gananciaEstimada,
            ventasPorCategoria: ventasPorCategoria,
            totalTransacciones: totalTransacciones,
            promedioVentaDiaria: promedioVentaDiaria,
            diasActivos: diasActivos,
            creditosPendientesCierre: creditosPendientesCierre,
            cantidadCreditosPendientes: cantidadCreditosPendientes,
            datosCompletos: datosCompletos,
            generadoEl: generadoEl,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ResumenMensualTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ResumenMensualTable,
    ResumenMensualLocal,
    $$ResumenMensualTableFilterComposer,
    $$ResumenMensualTableOrderingComposer,
    $$ResumenMensualTableAnnotationComposer,
    $$ResumenMensualTableCreateCompanionBuilder,
    $$ResumenMensualTableUpdateCompanionBuilder,
    (
      ResumenMensualLocal,
      BaseReferences<_$AppDatabase, $ResumenMensualTable, ResumenMensualLocal>
    ),
    ResumenMensualLocal,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductosTableTableManager get productos =>
      $$ProductosTableTableManager(_db, _db.productos);
  $$PulperiasTableTableManager get pulperias =>
      $$PulperiasTableTableManager(_db, _db.pulperias);
  $$ClientesFiadoTableTableManager get clientesFiado =>
      $$ClientesFiadoTableTableManager(_db, _db.clientesFiado);
  $$RegistrosTableTableManager get registros =>
      $$RegistrosTableTableManager(_db, _db.registros);
  $$FiadosTableTableManager get fiados =>
      $$FiadosTableTableManager(_db, _db.fiados);
  $$ResumenMensualTableTableManager get resumenMensual =>
      $$ResumenMensualTableTableManager(_db, _db.resumenMensual);
}
