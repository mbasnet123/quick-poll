import 'package:quick_poll/features/create_poll/data/datasources/poll_local_datasource.dart';
import 'package:quick_poll/features/create_poll/domain/entities/poll_entity.dart';

import '../../domain/repositories/poll_repository.dart';
import '../model/poll_model.dart';

class PollRepositoryImpl implements PollRepository{
  final PollLocalDatasource _local;
  PollRepositoryImpl(this._local);
  @override
  Future<void> createPoll(PollEntity poll) async {
    await _local.createPoll(PollModel.fromEntity(poll));
  }

  @override
  Future<List<PollEntity>> getAllPolls() async {
    final models = await _local.getAllPolls();
    return models.map((m) => m.toEntity()).toList();
  }

}