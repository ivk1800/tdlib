import '../tdapi.dart';

/// Contains a list of text entities
class TextEntities extends TdObject {
  TextEntities({required this.entities, this.extra});

  /// [entities] List of text entities
  final List<TextEntity> entities;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'textEntities';

  static TextEntities? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TextEntities(
        entities: List<TextEntity>.from((json['entities}'] ?? [])
            .map((item) => TextEntity.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'entities': this.entities, '@type': CONSTRUCTOR, '@extra': this.extra};
}
