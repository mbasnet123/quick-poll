import 'package:quick_poll/features/create_poll/domain/entities/poll_question.dart';
import 'package:quick_poll/shared/enums/poll_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/enums/poll_status.dart';
part 'poll_entity.freezed.dart';
part 'poll_entity.g.dart';

@freezed
abstract class PollEntity with _$PollEntity {
  const factory PollEntity({
    required String id,
    required String title,
    String? description,
    required String creatorId,
    required String creatorName,
    required DateTime createdAt,
    DateTime? expiresAt,
    required PollType pollType,
    @Default(false) bool isAnonymous,
    @Default(false) bool allowMultipleVotes,
    required PollStatus status,
    required List<PollQuestion> questions,
    @Default(0) int totalVotes,
    @Default([]) List<String> tags,
  }) = _PollEntity;

  factory PollEntity.fromJson(Map<String, dynamic> json) =>
      _$PollEntityFromJson(json);
}