import '../tdapi.dart';

/// A poll in quiz mode, which has exactly one correct answer option and can
/// answered only once
class PollTypeQuiz extends PollType {
  PollTypeQuiz({required this.correctOptionId, required this.explanation});

  /// [correctOptionId] 0-based identifier of the correct answer option; -1 for
  /// yet unanswered poll
  final int correctOptionId;

  /// [explanation] Text that is shown when the user chooses an incorrect answer
  /// taps on the lamp icon, 0-200 characters with at most 2 line feeds; empty
  /// a yet unanswered poll
  final FormattedText explanation;

  static const String CONSTRUCTOR = 'pollTypeQuiz';

  static PollTypeQuiz? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PollTypeQuiz(
        correctOptionId: json['correct_option_id'],
        explanation: FormattedText.fromJson(json['explanation'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'correct_option_id': this.correctOptionId,
        'explanation': this.explanation,
        '@type': CONSTRUCTOR
      };
}
