import '../tdapi.dart';

/// A button that forces an inline query to the bot to be inserted in the
/// field
class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  InlineKeyboardButtonTypeSwitchInline(
      {required this.query, required this.inCurrentChat});

  /// [query] Inline query to be sent to the bot
  final String query;

  /// [inCurrentChat] True, if the inline query should be sent from the current
  final bool inCurrentChat;

  static const String CONSTRUCTOR = 'inlineKeyboardButtonTypeSwitchInline';

  static InlineKeyboardButtonTypeSwitchInline? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeSwitchInline(
        query: json['query'], inCurrentChat: json['in_current_chat']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'query': this.query,
        'in_current_chat': this.inCurrentChat,
        '@type': CONSTRUCTOR
      };
}
