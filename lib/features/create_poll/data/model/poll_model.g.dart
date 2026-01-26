// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PollModel _$PollModelFromJson(Map<String, dynamic> json) => _PollModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  creatorId: json['creatorId'] as String,
  creatorName: json['creatorName'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  expiresAt: json['expiresAt'] == null
      ? null
      : DateTime.parse(json['expiresAt'] as String),
  pollType: $enumDecode(_$PollTypeEnumMap, json['pollType']),
  isAnonymous: json['isAnonymous'] as bool? ?? false,
  allowMultipleVotes: json['allowMultipleVotes'] as bool? ?? false,
  status: $enumDecode(_$PollStatusEnumMap, json['status']),
  questions: (json['questions'] as List<dynamic>)
      .map((e) => PollQuestion.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalVotes: (json['totalVotes'] as num?)?.toInt() ?? 0,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$PollModelToJson(_PollModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'creatorId': instance.creatorId,
      'creatorName': instance.creatorName,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'pollType': _$PollTypeEnumMap[instance.pollType]!,
      'isAnonymous': instance.isAnonymous,
      'allowMultipleVotes': instance.allowMultipleVotes,
      'status': _$PollStatusEnumMap[instance.status]!,
      'questions': instance.questions,
      'totalVotes': instance.totalVotes,
      'tags': instance.tags,
    };

const _$PollTypeEnumMap = {
  PollType.singleChoice: 'singleChoice',
  PollType.multipleChoice: 'multipleChoice',
  PollType.rating: 'rating',
  PollType.text: 'text',
};

const _$PollStatusEnumMap = {
  PollStatus.draft: 'draft',
  PollStatus.active: 'active',
  PollStatus.closed: 'closed',
};
