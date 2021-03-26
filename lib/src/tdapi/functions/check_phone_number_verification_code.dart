import '../tdapi.dart';

/// Checks the phone number verification code for Telegram Passport
/// Returns [Ok]
class CheckPhoneNumberVerificationCode extends TdFunction {
  CheckPhoneNumberVerificationCode({required this.code, this.extra});

  /// [code] Verification code
  final String code;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'checkPhoneNumberVerificationCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'code': this.code, '@type': CONSTRUCTOR, '@extra': this.extra};
}
