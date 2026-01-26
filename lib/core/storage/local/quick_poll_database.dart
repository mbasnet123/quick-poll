import 'package:drift/drift.dart';
import 'tables.dart';
import 'package:drift_flutter/drift_flutter.dart';
part 'quick_poll_database.g.dart';

@DriftDatabase(
tables:
  [
    Poll
  ]
)

class QuickPollDatabase extends _$QuickPollDatabase{
  static final _instance = QuickPollDatabase.internal();
  QuickPollDatabase.internal(): super(_openConnection());

  factory QuickPollDatabase(){
    return _instance;
  }

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: "quick_poll_db");
  }


}