part of '../tdapi.dart';

/// Returns the received bytes; for testing only. This is an offline method.
/// be called before authorization
class TestCallBytes extends TdFunction {
  TestCallBytes({required this.x});

  /// [x] Bytes to return
  final String x;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'testCallBytes';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'x': this.x, '@type': CONSTRUCTOR, '@extra': this.extra};
}
