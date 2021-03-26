import '../tdapi.dart';

/// Recovers the password using a recovery code sent to an email address that
/// previously set up
/// Returns [PasswordState]
class RecoverPassword extends TdFunction {
  RecoverPassword({required this.recoveryCode});

  /// [recoveryCode] Recovery code to check
  final String recoveryCode;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'recoverPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'recovery_code': this.recoveryCode,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
