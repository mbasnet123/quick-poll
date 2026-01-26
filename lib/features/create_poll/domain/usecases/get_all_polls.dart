import 'package:quick_poll/features/create_poll/domain/entities/poll_entity.dart';
import 'package:quick_poll/features/create_poll/domain/repositories/poll_repository.dart';

class GetAllPolls {
  final PollRepository repository;
  GetAllPolls(this.repository);

  Future<List<PollEntity>> call(){
    return repository.getAllPolls();
  }
}