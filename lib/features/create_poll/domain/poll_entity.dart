import 'package:quick_poll/shared/enums/poll_type.dart';

class PollEntity {
  final String id;
  final String title;
  final String? description;
  final String? creatorId;
  final String creatorName;
  final DateTime createdAt;
  final DateTime? expiresAt;
  final PollType pollType;
  final bool isAnonymous;
  final bool allowMultipleVotes;
  final PollStatus status;
  final List<PollQuestion> questions;
  final int totalVotes;
  final List<String> tags;
}