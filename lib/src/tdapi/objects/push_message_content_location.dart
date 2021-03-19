part of '../tdapi.dart';

/// Group.Objects
/// A message with a location
class PushMessageContentLocation extends PushMessageContent {
  PushMessageContentLocation({required this.isLive, required this.isPinned});

  /// is_live True, if the location is live
  final bool isLive;

  /// is_pinned True, if the message is a pinned message with the specified content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentLocation';

  static PushMessageContentLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentLocation(
        isLive: json['is_live'], isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_live': this.isLive,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
