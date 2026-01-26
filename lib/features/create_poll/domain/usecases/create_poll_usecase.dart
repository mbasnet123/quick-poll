import 'package:quick_poll/features/create_poll/domain/entities/poll_entity.dart';
import 'package:quick_poll/features/create_poll/domain/repositories/poll_repository.dart';

class CreatePollUsecase {
  final PollRepository repository;

  CreatePollUsecase(this.repository);

  Future<void> call(PollEntity poll){
    return repository.createPoll(poll);
  }
}