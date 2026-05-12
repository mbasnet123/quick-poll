import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/create_poll/data/model/poll_model.dart';

class PollListNotifier extends AsyncNotifier<List<PollModel>> {
  @override
  Future<List<PollModel>> build() async{
    final useCase = ref.read(getAllPollsUseCaseProvider);
    final entities = await useCase();
    returen entities.map((e) => PollModel.fromEntity(e)).toList();
  }

  Future<void> createPoll(PollModel poll) async {
    final create = ref.read(createPollUseCaseProvider);

    state = const AsyncLoading();
    state = const AsyncValue.guard(() async {
      await create(poll.toEntity());
      final getAll = ref.read(getAllPollUseCaseProvider);
      final entities = await getAll();
      return entities.map((e) => PollModel.fromEntity(e)).toList();
    });
  }

  Future<void> refresh() async => ref.invalideSelf();
}

final pollListNotifierProvider = AsyncNotifierProvider<PollListNotifier, List<PollModel>>(
  PollListNotifier.new,
);