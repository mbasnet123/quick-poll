// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PollOption _$PollOptionFromJson(Map<String, dynamic> json) => _PollOption(
  id: json['id'] as String,
  optionText: json['optionText'] as String,
  order: (json['order'] as num).toInt(),
  voteCount: (json['voteCount'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PollOptionToJson(_PollOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'optionText': instance.optionText,
      'order': instance.order,
      'voteCount': instance.voteCount,
    };
