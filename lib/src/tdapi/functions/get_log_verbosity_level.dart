import '../tdapi.dart';

/// Returns current verbosity level of the internal logging of TDLib. Can be
/// synchronously
/// Returns [LogVerbosityLevel]
class GetLogVerbosityLevel extends TdFunction {
  GetLogVerbosityLevel();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getLogVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
