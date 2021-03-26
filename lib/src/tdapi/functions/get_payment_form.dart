import '../tdapi.dart';

/// Returns an invoice payment form. This method should be called when the
/// presses inlineKeyboardButtonBuy
/// Returns [PaymentForm]
class GetPaymentForm extends TdFunction {
  GetPaymentForm({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getPaymentForm';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
