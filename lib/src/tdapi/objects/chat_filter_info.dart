import '../tdapi.dart';

/// Contains basic information about a chat filter
class ChatFilterInfo extends TdObject {
  ChatFilterInfo(
      {required this.id,
      required this.title,
      required this.iconName,
      this.extra});

  /// [id] Unique chat filter identifier
  final int id;

  /// [title] The title of the filter; 1-12 characters without line feeds
  final String title;

  /// [iconName] The icon name for short filter representation. One of "All",
  /// "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup",
  /// "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party",
  /// "Study", "Trade", "Travel", "Work"
  final String iconName;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'chatFilterInfo';

  static ChatFilterInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFilterInfo(
        id: json['id'],
        title: json['title'],
        iconName: json['icon_name'],
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'title': this.title,
        'icon_name': this.iconName,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
