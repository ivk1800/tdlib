part of '../tdapi.dart';

/// Group.Objects
/// A message with a poll
class PushMessageContentPoll extends PushMessageContent {
  PushMessageContentPoll(
      {required this.question,
      required this.isRegular,
      required this.isPinned});

  /// question Poll question
  final String question;

  /// is_regular True, if the poll is regular and not in quiz mode
  final bool isRegular;

  /// is_pinned True, if the message is a pinned message with the specified content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentPoll';

  static PushMessageContentPoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPoll(
        question: json['question'],
        isRegular: json['is_regular'],
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'question': this.question,
        'is_regular': this.isRegular,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
