import 'package:freezed_annotation/freezed_annotation.dart';
part 'poll_option.g.dart';
part 'poll_option.freezed.dart';

enum OptionSet{
  agreeScale,
  yesNo,
  rating,
}

@freezed
abstract class PollOption with _$PollOption {
  const factory PollOption({
    required String id,
    required String optionText,
    required int order,
    @Default(0) int voteCount,
  }) = _PollOption;

  factory PollOption.fromJson(Map<String, dynamic> json) =>
      _$PollOptionFromJson(json);
}