part of '../tdapi.dart';

/// Group.Objects
/// A message with a user contact
class PushMessageContentContact extends PushMessageContent {
  PushMessageContentContact({required this.name, required this.isPinned});

  /// name Contact's name
  final String name;

  /// is_pinned True, if the message is a pinned message with the specified content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentContact';

  static PushMessageContentContact? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentContact(
        name: json['name'], isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'name': this.name, 'is_pinned': this.isPinned, '@type': CONSTRUCTOR};
}
