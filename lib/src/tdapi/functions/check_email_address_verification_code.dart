import '../tdapi.dart';

/// Checks the email address verification code for Telegram Passport
/// Returns [Ok]
class CheckEmailAddressVerificationCode extends TdFunction {
  CheckEmailAddressVerificationCode({required this.code});

  /// [code] Verification code
  final String code;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'checkEmailAddressVerificationCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'code': this.code, '@type': CONSTRUCTOR, '@extra': this.extra};
}
