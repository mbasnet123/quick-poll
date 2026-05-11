import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quick_poll/core/storage/local/quick_poll_database.dart';
import 'package:quick_poll/features/create_poll/data/datasources/poll_local_datasource.dart';

final databaseProvider = Provider<QuickPollDatabase>((ref) {
  final db = QuickPollDatabase();
  ref.onDispose(() => db.close());
  return db;
});

final pollLocalDatasourceProvider = Provider<PollLocalDatasource>((ref) {
  return PollDrfitDataSource(ref.watch(databaseProvider));
});