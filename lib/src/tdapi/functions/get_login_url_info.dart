import '../tdapi.dart';

/// Returns information about a button of type
/// The method needs to be called when the user presses the button
/// Returns [LoginUrlInfo]
class GetLoginUrlInfo extends TdFunction {
  GetLoginUrlInfo(
      {required this.chatId, required this.messageId, required this.buttonId});

  /// [chatId] Chat identifier of the message with the button
  final int chatId;

  /// [messageId] Message identifier of the message with the button
  final int messageId;

  /// [buttonId] Button identifier
  final int buttonId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLoginUrlInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'button_id': this.buttonId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
