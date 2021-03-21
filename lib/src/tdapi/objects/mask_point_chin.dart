import '../tdapi.dart';

/// A mask should be placed relatively to the chin
class MaskPointChin extends MaskPoint {
  const MaskPointChin();

  static const String CONSTRUCTOR = 'maskPointChin';

  static MaskPointChin? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MaskPointChin();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
