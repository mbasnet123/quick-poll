import 'package:drift/drift.dart';

class Poll extends Table{
  TextColumn get id => text()();
  TextColumn get name => text()();
  IntColumn get totalDays => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

class PollOptions extends Table{
  TextColumn get id => text()();
  TextColumn get pollId => text().references(Polls, #id, onDelete: KeyAction.cascade)();
  TextColumn get optionText => text()();
  IntColumn get order => integer().nullable()();
  IntColumn get voteCount => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}