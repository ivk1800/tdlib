import '../tdapi.dart';

/// Contains a custom keyboard layout to quickly reply to bots
class ReplyMarkupShowKeyboard extends ReplyMarkup {
  ReplyMarkupShowKeyboard(
      {required this.rows,
      required this.resizeKeyboard,
      required this.oneTime,
      required this.isPersonal});

  /// [rows] A list of rows of bot keyboard buttons
  final List<List<KeyboardButton>> rows;

  /// [resizeKeyboard] True, if the application needs to resize the keyboard
  final bool resizeKeyboard;

  /// [oneTime] True, if the application needs to hide the keyboard after use
  final bool oneTime;

  /// [isPersonal] True, if the keyboard must automatically be shown to the
  /// user. For outgoing messages, specify true to show the keyboard only for
  /// mentioned users and for the target user of a reply
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
                    .map((item) => KeyboardButton.fromJson(item))
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
        'rows': rows
            .map((item) => item.map((item) => item.toJson()).toList())
            .toList(),
        'resize_keyboard': this.resizeKeyboard,
        'one_time': this.oneTime,
        'is_personal': this.isPersonal,
        '@type': CONSTRUCTOR
      };
}
