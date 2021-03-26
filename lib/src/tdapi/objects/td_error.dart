import '../tdapi.dart';

/// An object of this type can be returned on every function call, in case of
/// error
class TdError extends TdObject {
  TdError({required this.code, required this.message, this.extra});

  /// [code] Error code; subject to future changes. If the error code is 406,
  /// error message must not be processed in any way and must not be displayed
  /// the user
  final int code;

  /// [message] Error message; subject to future changes
  final String message;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'error';

  static TdError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TdError(
        code: json['code'], message: json['message'], extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'code': this.code,
        'message': this.message,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
