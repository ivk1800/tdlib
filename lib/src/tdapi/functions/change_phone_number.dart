part of '../tdapi.dart';

/// Group.Functions
/// Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code
class ChangePhoneNumber extends TdFunction {
  ChangePhoneNumber({required this.phoneNumber, required this.settings});

  /// phone_number The new phone number of the user in international format
  final String phoneNumber;

  /// settings Settings for the authentication of the user's phone number
  final PhoneNumberAuthenticationSettings settings;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'changePhoneNumber';

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
