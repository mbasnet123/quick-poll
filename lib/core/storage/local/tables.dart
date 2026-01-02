import 'package:drift/drift.dart';

class Poll extends Table{
  TextColumn get id => text()();
  TextColumn get name => text()();
  IntColumn get totalDays => integer()();

  @override
  Set<Column> get primaryKey => {id};
}