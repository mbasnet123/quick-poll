import 'package:quick_poll/features/create_poll/data/model/poll_model.dart';

abstract class PollLocalDatasource {
  Future<void> createPoll(PollModel poll);
  Future<List<PollModel>> getAllPolls();
}