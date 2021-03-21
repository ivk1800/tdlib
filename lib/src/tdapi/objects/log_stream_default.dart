import '../tdapi.dart';

/// The log is written to stderr or an OS specific log
class LogStreamDefault extends LogStream {
  const LogStreamDefault();

  static const String CONSTRUCTOR = 'logStreamDefault';

  static LogStreamDefault? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LogStreamDefault();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
