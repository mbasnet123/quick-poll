import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_poll/features/create_poll/domain/entities/poll_entity.dart';

import '../../../../shared/enums/poll_type.dart';
import '../../domain/entities/poll_option.dart';

part 'poll_model.freezed.dart';
part 'poll_model.g.dart';

@freezed
abstract class PollModel with _$PollModel {
  const PollModel._();

  const factory PollModel({
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
    @Default(false) bool isDraft,
    @Default(false) bool isClosed,
    required String question,
    @Default(0) int totalVotes,
    @Default([]) List<String> tags,
    required List<PollOption> options,
  }) = _PollModel;

  factory PollModel.fromJson(Map<String, dynamic> json) =>
      _$PollModelFromJson(json);

  // Convert Model to Entity
  PollEntity toEntity() => PollEntity(
    id: id,
    title: title,
    description: description,
    creatorId: creatorId,
    creatorName: creatorName,
    createdAt: createdAt,
    expiresAt: expiresAt,
    pollType: pollType,
    isAnonymous: isAnonymous,
    allowMultipleVotes: allowMultipleVotes,
    isDraft: isDraft,
    isClosed: isClosed,
    question: question,
    totalVotes: totalVotes,
    tags: tags, options: options,
  );

  // Create Model from Entity
  factory PollModel.fromEntity(PollEntity entity) => PollModel(
    id: entity.id,
    title: entity.title,
    description: entity.description,
    creatorId: entity.creatorId,
    creatorName: entity.creatorName,
    createdAt: entity.createdAt,
    expiresAt: entity.expiresAt,
    pollType: entity.pollType,
    isAnonymous: entity.isAnonymous,
    allowMultipleVotes: entity.allowMultipleVotes,
    isDraft: entity.isDraft,
    isClosed: entity.isClosed,
    question: entity.question,
    totalVotes: entity.totalVotes,
    tags: entity.tags, options: entity.options,
  );
}