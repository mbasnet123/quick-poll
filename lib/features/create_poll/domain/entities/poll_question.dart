import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quick_poll/features/create_poll/domain/entities/poll_option.dart';
part 'poll_question.g.dart';
part 'poll_question.freezed.dart';

@freezed
abstract class PollQuestion with _$PollQuestion {
  const factory PollQuestion({
    required String id,
    required String questionText,
    required int order,
    @Default(true) bool isRequired,
    List<PollOption>? options,
    int? minRating,
    int? maxRating,
  }) = _PollQuestion;

  factory PollQuestion.fromJson(Map<String, dynamic> json) =>
      _$PollQuestionFromJson(json);
}