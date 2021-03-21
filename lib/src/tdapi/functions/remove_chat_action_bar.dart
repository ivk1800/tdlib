import '../tdapi.dart';

/// Removes a chat action bar without any other action
class RemoveChatActionBar extends TdFunction {
  RemoveChatActionBar({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'removeChatActionBar';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
