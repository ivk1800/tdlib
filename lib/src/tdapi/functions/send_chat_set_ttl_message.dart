import '../tdapi.dart';

/// Changes the current TTL setting (sets a new self-destruct timer) in a
/// chat and sends the corresponding message
/// Returns [Message]
class SendChatSetTtlMessage extends TdFunction {
  SendChatSetTtlMessage({required this.chatId, required this.ttl});

  /// [chatId] Chat identifier
  final int chatId;

  /// [ttl] New TTL value, in seconds
  final int ttl;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sendChatSetTtlMessage';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'ttl': this.ttl,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
