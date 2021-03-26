import '../tdapi.dart';

/// Checks phone number confirmation code
/// Returns [Ok]
class CheckPhoneNumberConfirmationCode extends TdFunction {
  CheckPhoneNumberConfirmationCode({required this.code, this.extra});

  /// [code] The phone number confirmation code
  final String code;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'checkPhoneNumberConfirmationCode';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'code': this.code, '@type': CONSTRUCTOR, '@extra': this.extra};
}
