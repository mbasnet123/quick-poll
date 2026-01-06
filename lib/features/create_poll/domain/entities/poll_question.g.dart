// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PollQuestion _$PollQuestionFromJson(Map<String, dynamic> json) =>
    _PollQuestion(
      id: json['id'] as String,
      questionText: json['questionText'] as String,
      order: (json['order'] as num).toInt(),
      isRequired: json['isRequired'] as bool? ?? true,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => PollOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      minRating: (json['minRating'] as num?)?.toInt(),
      maxRating: (json['maxRating'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PollQuestionToJson(_PollQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionText': instance.questionText,
      'order': instance.order,
      'isRequired': instance.isRequired,
      'options': instance.options,
      'minRating': instance.minRating,
      'maxRating': instance.maxRating,
    };
