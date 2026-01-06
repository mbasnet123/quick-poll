import 'package:quick_poll/features/create_poll/domain/entities/poll_entity.dart';

abstract class PollRepository {
  Future<void> createPoll(PollEntity poll);
  Future<List<PollEntity>> getAllPolls();
}