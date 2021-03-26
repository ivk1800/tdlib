import '../tdapi.dart';

/// Validates the order information provided by a user and returns the
/// shipping options for a flexible invoice
/// Returns [ValidatedOrderInfo]
class ValidateOrderInfo extends TdFunction {
  ValidateOrderInfo(
      {required this.chatId,
      required this.messageId,
      required this.orderInfo,
      required this.allowSave,
      this.extra});

  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [orderInfo] The order information, provided by the user
  final OrderInfo orderInfo;

  /// [allowSave] True, if the order information can be saved
  final bool allowSave;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'validateOrderInfo';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'order_info': this.orderInfo.toJson(),
        'allow_save': this.allowSave,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
