import '../tdapi.dart';

/// A simple object containing a vector of objects that hold a number; for
/// only
class TestVectorIntObject extends TdObject {
  TestVectorIntObject({required this.value, this.extra});

  /// [value] Vector of objects
  final List<TestInt> value;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'testVectorIntObject';

  static TestVectorIntObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorIntObject(
        value: List<TestInt>.from((json['value}'] ?? [])
            .map((item) => TestInt.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'value': value.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
