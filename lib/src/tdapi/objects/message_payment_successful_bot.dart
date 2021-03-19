part of '../tdapi.dart';

/// Group.Objects
/// A payment has been completed; for bots only
class MessagePaymentSuccessfulBot extends MessageContent {
  MessagePaymentSuccessfulBot(
      {required this.invoiceMessageId,
      required this.currency,
      required this.totalAmount,
      required this.invoicePayload,
      required this.shippingOptionId,
      OrderInfo? this.orderInfo,
      required this.telegramPaymentChargeId,
      required this.providerPaymentChargeId});

  /// invoice_message_id Identifier of the message with the corresponding invoice; can be an identifier of a deleted message
  final int invoiceMessageId;

  /// currency Currency for price of the product
  final String currency;

  /// total_amount Total price for the product, in the minimal quantity of the currency
  final int totalAmount;

  /// invoice_payload Invoice payload
  final String invoicePayload;

  /// shipping_option_id Identifier of the shipping option chosen by the user; may be empty if not applicable
  final String shippingOptionId;

  /// order_info Information about the order; may be null
  final OrderInfo? orderInfo;

  /// telegram_payment_charge_id Telegram payment identifier
  final String telegramPaymentChargeId;

  /// provider_payment_charge_id Provider payment identifier
  final String providerPaymentChargeId;

  static const String CONSTRUCTOR = 'messagePaymentSuccessfulBot';

  static MessagePaymentSuccessfulBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePaymentSuccessfulBot(
        invoiceMessageId: json['invoice_message_id'],
        currency: json['currency'],
        totalAmount: json['total_amount'],
        invoicePayload: json['invoice_payload'],
        shippingOptionId: json['shipping_option_id'],
        orderInfo: OrderInfo.fromJson(json['order_info']),
        telegramPaymentChargeId: json['telegram_payment_charge_id'],
        providerPaymentChargeId: json['provider_payment_charge_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invoice_message_id': this.invoiceMessageId,
        'currency': this.currency,
        'total_amount': this.totalAmount,
        'invoice_payload': this.invoicePayload,
        'shipping_option_id': this.shippingOptionId,
        'order_info': this.orderInfo,
        'telegram_payment_charge_id': this.telegramPaymentChargeId,
        'provider_payment_charge_id': this.providerPaymentChargeId,
        '@type': CONSTRUCTOR
      };
}
