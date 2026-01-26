// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_poll_database.dart';

// ignore_for_file: type=lint
class $PollTable extends Poll with TableInfo<$PollTable, PollData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PollTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalDaysMeta = const VerificationMeta(
    'totalDays',
  );
  @override
  late final GeneratedColumn<int> totalDays = GeneratedColumn<int>(
    'total_days',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, totalDays];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'poll';
  @override
  VerificationContext validateIntegrity(
    Insertable<PollData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('total_days')) {
      context.handle(
        _totalDaysMeta,
        totalDays.isAcceptableOrUnknown(data['total_days']!, _totalDaysMeta),
      );
    } else if (isInserting) {
      context.missing(_totalDaysMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PollData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PollData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      totalDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_days'],
      )!,
    );
  }

  @override
  $PollTable createAlias(String alias) {
    return $PollTable(attachedDatabase, alias);
  }
}

class PollData extends DataClass implements Insertable<PollData> {
  final String id;
  final String name;
  final int totalDays;
  const PollData({
    required this.id,
    required this.name,
    required this.totalDays,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['total_days'] = Variable<int>(totalDays);
    return map;
  }

  PollCompanion toCompanion(bool nullToAbsent) {
    return PollCompanion(
      id: Value(id),
      name: Value(name),
      totalDays: Value(totalDays),
    );
  }

  factory PollData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PollData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      totalDays: serializer.fromJson<int>(json['totalDays']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'totalDays': serializer.toJson<int>(totalDays),
    };
  }

  PollData copyWith({String? id, String? name, int? totalDays}) => PollData(
    id: id ?? this.id,
    name: name ?? this.name,
    totalDays: totalDays ?? this.totalDays,
  );
  PollData copyWithCompanion(PollCompanion data) {
    return PollData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      totalDays: data.totalDays.present ? data.totalDays.value : this.totalDays,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PollData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('totalDays: $totalDays')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, totalDays);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PollData &&
          other.id == this.id &&
          other.name == this.name &&
          other.totalDays == this.totalDays);
}

class PollCompanion extends UpdateCompanion<PollData> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> totalDays;
  final Value<int> rowid;
  const PollCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.totalDays = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PollCompanion.insert({
    required String id,
    required String name,
    required int totalDays,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       totalDays = Value(totalDays);
  static Insertable<PollData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? totalDays,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (totalDays != null) 'total_days': totalDays,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PollCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int>? totalDays,
    Value<int>? rowid,
  }) {
    return PollCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      totalDays: totalDays ?? this.totalDays,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (totalDays.present) {
      map['total_days'] = Variable<int>(totalDays.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PollCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('totalDays: $totalDays, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$QuickPollDatabase extends GeneratedDatabase {
  _$QuickPollDatabase(QueryExecutor e) : super(e);
  $QuickPollDatabaseManager get managers => $QuickPollDatabaseManager(this);
  late final $PollTable poll = $PollTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [poll];
}

typedef $$PollTableCreateCompanionBuilder =
    PollCompanion Function({
      required String id,
      required String name,
      required int totalDays,
      Value<int> rowid,
    });
typedef $$PollTableUpdateCompanionBuilder =
    PollCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<int> totalDays,
      Value<int> rowid,
    });

class $$PollTableFilterComposer
    extends Composer<_$QuickPollDatabase, $PollTable> {
  $$PollTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalDays => $composableBuilder(
    column: $table.totalDays,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PollTableOrderingComposer
    extends Composer<_$QuickPollDatabase, $PollTable> {
  $$PollTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalDays => $composableBuilder(
    column: $table.totalDays,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PollTableAnnotationComposer
    extends Composer<_$QuickPollDatabase, $PollTable> {
  $$PollTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get totalDays =>
      $composableBuilder(column: $table.totalDays, builder: (column) => column);
}

class $$PollTableTableManager
    extends
        RootTableManager<
          _$QuickPollDatabase,
          $PollTable,
          PollData,
          $$PollTableFilterComposer,
          $$PollTableOrderingComposer,
          $$PollTableAnnotationComposer,
          $$PollTableCreateCompanionBuilder,
          $$PollTableUpdateCompanionBuilder,
          (PollData, BaseReferences<_$QuickPollDatabase, $PollTable, PollData>),
          PollData,
          PrefetchHooks Function()
        > {
  $$PollTableTableManager(_$QuickPollDatabase db, $PollTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PollTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PollTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PollTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> totalDays = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PollCompanion(
                id: id,
                name: name,
                totalDays: totalDays,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required int totalDays,
                Value<int> rowid = const Value.absent(),
              }) => PollCompanion.insert(
                id: id,
                name: name,
                totalDays: totalDays,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PollTableProcessedTableManager =
    ProcessedTableManager<
      _$QuickPollDatabase,
      $PollTable,
      PollData,
      $$PollTableFilterComposer,
      $$PollTableOrderingComposer,
      $$PollTableAnnotationComposer,
      $$PollTableCreateCompanionBuilder,
      $$PollTableUpdateCompanionBuilder,
      (PollData, BaseReferences<_$QuickPollDatabase, $PollTable, PollData>),
      PollData,
      PrefetchHooks Function()
    >;

class $QuickPollDatabaseManager {
  final _$QuickPollDatabase _db;
  $QuickPollDatabaseManager(this._db);
  $$PollTableTableManager get poll => $$PollTableTableManager(_db, _db.poll);
}
