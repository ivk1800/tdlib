import '../tdapi.dart';

/// Succeeds after a specified amount of time has passed. Can be called before
/// Returns [Ok]
class SetAlarm extends TdFunction {
  SetAlarm({required this.seconds, this.extra});

  /// [seconds] Number of seconds before the function returns
  final double seconds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setAlarm';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'seconds': this.seconds, '@type': CONSTRUCTOR, '@extra': this.extra};
}
