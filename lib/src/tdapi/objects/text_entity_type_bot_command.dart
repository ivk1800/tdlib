part of '../tdapi.dart';

/// Group.Objects
/// A bot command, beginning with "/". This shouldn't be highlighted if there are no bots in the chat
class TextEntityTypeBotCommand extends TextEntityType {
  const TextEntityTypeBotCommand();

  static const String CONSTRUCTOR = 'textEntityTypeBotCommand';

  static TextEntityTypeBotCommand? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeBotCommand();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
