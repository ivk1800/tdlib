import '../tdapi.dart';

/// Removes a chat from the list of frequently used chats. Supported only if
/// chat info database is enabled
/// Returns [Ok]
class RemoveTopChat extends TdFunction {
  RemoveTopChat({required this.category, required this.chatId, this.extra});

  /// [category] Category of frequently used chats
  final TopChatCategory category;

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeTopChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'category': this.category.toJson(),
        'chat_id': this.chatId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
