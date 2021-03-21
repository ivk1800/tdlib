import '../tdapi.dart';

/// Contains a list of hashtags
class Hashtags extends TdObject {
  Hashtags({required this.hashtags, this.extra});

  /// [hashtags] A list of hashtags
  final List<String> hashtags;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'hashtags';

  static Hashtags? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Hashtags(
        hashtags: List<String>.from(
            (json['hashtags}'] ?? []).map((item) => json['String']).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'hashtags': this.hashtags, '@type': CONSTRUCTOR, '@extra': this.extra};
}
