part of '../tdapi.dart';

/// Order information
class OrderInfo extends TdObject {
  OrderInfo(
      {required this.name,
      required this.phoneNumber,
      required this.emailAddress,
      Address? this.shippingAddress});

  /// [name] Name of the user
  final String name;

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [emailAddress] Email address of the user
  final String emailAddress;

  /// [shippingAddress] Shipping address for this order; may be null
  final Address? shippingAddress;

  static const String CONSTRUCTOR = 'orderInfo';

  static OrderInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrderInfo(
        name: json['name'],
        phoneNumber: json['phone_number'],
        emailAddress: json['email_address'],
        shippingAddress: Address.fromJson(json['shipping_address']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'name': this.name,
        'phone_number': this.phoneNumber,
        'email_address': this.emailAddress,
        'shipping_address': this.shippingAddress,
        '@type': CONSTRUCTOR
      };
}
