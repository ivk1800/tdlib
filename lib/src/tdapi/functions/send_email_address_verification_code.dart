import '../tdapi.dart';

/// Sends a code to verify an email address to be added to a user's Telegram
/// Returns [EmailAddressAuthenticationCodeInfo]
class SendEmailAddressVerificationCode extends TdFunction {
  SendEmailAddressVerificationCode({required this.emailAddress, this.extra});

  /// [emailAddress] Email address
  final String emailAddress;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sendEmailAddressVerificationCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'email_address': this.emailAddress,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
