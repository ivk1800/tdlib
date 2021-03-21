import '../tdapi.dart';

/// Contains a list of t.me URLs
class TMeUrls extends TdObject {
  TMeUrls({required this.urls, this.extra});

  /// [urls] List of URLs
  final List<TMeUrl> urls;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'tMeUrls';

  static TMeUrls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrls(
        urls: List<TMeUrl>.from((json['urls}'] ?? [])
            .map((item) => TMeUrl.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'urls': this.urls, '@type': CONSTRUCTOR, '@extra': this.extra};
}
