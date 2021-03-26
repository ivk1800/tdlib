import '../tdapi.dart';

/// Changes the location of a chat. Available only for some location-based
/// use supergroupFullInfo.can_set_location to check whether the method is
/// to use
/// Returns [Ok]
class SetChatLocation extends TdFunction {
  SetChatLocation({required this.chatId, required this.location});

  /// [chatId] Chat identifier
  final int chatId;

  /// [location] New location for the chat; must be valid and not null
  final ChatLocation location;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setChatLocation';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'location': this.location.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
