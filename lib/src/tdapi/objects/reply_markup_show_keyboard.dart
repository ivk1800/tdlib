part of '../tdapi.dart';

/// Group.Objects
/// Contains a custom keyboard layout to quickly reply to bots
class ReplyMarkupShowKeyboard extends ReplyMarkup {
  ReplyMarkupShowKeyboard(
      {required this.rows,
      required this.resizeKeyboard,
      required this.oneTime,
      required this.isPersonal});

  /// rows A list of rows of bot keyboard buttons
  final List<List<KeyboardButton>> rows;

  /// resize_keyboard True, if the application needs to resize the keyboard vertically
  final bool resizeKeyboard;

  /// one_time True, if the application needs to hide the keyboard after use
  final bool oneTime;

  /// is_personal True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply
  final bool isPersonal;

  static const String CONSTRUCTOR = 'replyMarkupShowKeyboard';

  static ReplyMarkupShowKeyboard? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReplyMarkupShowKeyboard(
        rows: List<List<KeyboardButton>>.from((json['rows}'] ?? [])
            .map((item) => List<KeyboardButton>.from(
                (json['List<KeyboardButton>}'] ?? [])
                    .map((item) =>
                        KeyboardButton.fromJson(json['KeyboardButton'])!)
                    .toList()))
            .toList()),
        resizeKeyboard: json['resize_keyboard'],
        oneTime: json['one_time'],
        isPersonal: json['is_personal']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'rows': this.rows,
        'resize_keyboard': this.resizeKeyboard,
        'one_time': this.oneTime,
        'is_personal': this.isPersonal,
        '@type': CONSTRUCTOR
      };
}
