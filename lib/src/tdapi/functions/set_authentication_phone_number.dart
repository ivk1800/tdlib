part of '../tdapi.dart';

/// Sets the phone number of the user and sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
class SetAuthenticationPhoneNumber extends TdFunction {
  SetAuthenticationPhoneNumber(
      {required this.phoneNumber, required this.settings});

  /// [phoneNumber] The phone number of the user, in international format
  final String phoneNumber;

  /// [settings] Settings for the authentication of the user's phone number
  final PhoneNumberAuthenticationSettings settings;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setAuthenticationPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number': this.phoneNumber,
        'settings': this.settings,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
