import '../tdapi.dart';

/// Changes the chat title. Supported only for basic groups, supergroups and
/// Requires can_change_info rights
/// Returns [Ok]
class SetChatTitle extends TdFunction {
  SetChatTitle({required this.chatId, required this.title});

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] New title of the chat; 1-128 characters
  final String title;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setChatTitle';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'title': this.title,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
