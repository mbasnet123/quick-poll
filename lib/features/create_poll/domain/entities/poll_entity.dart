import 'package:quick_poll/features/create_poll/domain/entities/poll_option.dart';
import 'package:quick_poll/features/create_poll/domain/entities/poll_question.dart';
import 'package:quick_poll/shared/enums/poll_type.dart';
import 'package:quick_poll/shared/enums/poll_status.dart';

// No freezed, no JSON - pure domain entity
class PollEntity {
  final String id;
  final String title;
  final String question;
  final String? description;
  final String creatorId;
  final String creatorName;
  final DateTime createdAt;
  final DateTime? expiresAt;
  final PollType pollType;
  final bool isAnonymous;
  final bool allowMultipleVotes;
  final bool isDraft;
  final bool isClosed;

  // final PollStatus status;

  PollStatus get status {
    if (isClosed) return PollStatus.closed;
    if (expiresAt != null && DateTime.now().isAfter(expiresAt!))
      return PollStatus.closed;
    return PollStatus.active;
  }

  final List<PollOption> options;
  final int totalVotes;
  final List<String> tags;

  PollEntity({
    required this.id,
    required this.title,
    this.description,
    required this.creatorId,
    required this.creatorName,
    required this.createdAt,
    this.expiresAt,
    required this.pollType,
    this.isAnonymous = false,
    this.allowMultipleVotes = false,
    // required this.status,
    required this.options,
    this.totalVotes = 0,
    this.tags = const [],
    this.isDraft = false,
    this.isClosed = false,
    required this.question,
  });
}
