import '../tdapi.dart';

/// Represents a list of proxy servers
class Proxies extends TdObject {
  Proxies({required this.proxies, this.extra});

  /// [proxies] List of proxy servers
  final List<Proxy> proxies;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'proxies';

  static Proxies? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Proxies(
        proxies: List<Proxy>.from((json['proxies}'] ?? [])
            .map((item) => Proxy.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'proxies': this.proxies, '@type': CONSTRUCTOR, '@extra': this.extra};
}
