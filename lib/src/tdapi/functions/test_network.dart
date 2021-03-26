import '../tdapi.dart';

/// Sends a simple network request to the Telegram servers; for testing only.
/// be called before authorization
/// Returns [Ok]
class TestNetwork extends TdFunction {
  TestNetwork();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testNetwork';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
