import '../tdapi.dart';

/// Does nothing; for testing only. This is an offline method. Can be called
/// authorization
/// Returns [Ok]
class TestCallEmpty extends TdFunction {
  TestCallEmpty();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testCallEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
