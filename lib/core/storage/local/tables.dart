import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:quick_poll/shared/enums/poll_type.dart';

class PollTypeConverter extends TypeConverter<int, int>{
  const PollTypeConverter();
  @override
  int fromSql(int fromDb) => fromDb;
  @override
  int toSql(int value) => value;
}

class StringListConverter extends TypeConverter<List<String>, String>{
  const StringListConverter();
  @override
  List<String> fromSql(String fromDb) => fromDb.isEmpty ? []: List<String>.from(jsonDecode(fromDb));
  @override
  String toSql(List<String> value) => jsonEncode(value);
}

class Poll extends Table{
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get question => text()();
  TextColumn get description => text().nullable()();
  TextColumn get creatorId => text()();
  TextColumn get creatorName => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get expiresAt => dateTime().nullable()();
  IntColumn get PollType => integer().map(const PollTypeConverter())();
  BoolColumn get isAnonymous => boolean().withDefault(const Constant(false))();
  BoolColumn get allowMultipleVotes => boolean().withDefault(const Constant(false))();
  BoolColumn get isDraft => boolean().withDefault(const Constant(false))();
  BoolColumn get isClosed => boolean().withDefault(const Constant(false))();
  IntColumn get totalVotes => integer().withDefault(const Constant(0))();
  TextColumn get tags => text().map(const StringListConverter()).withDefault(const Constant('[]'))();

  // IntColumn get totalDays => integer()();

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