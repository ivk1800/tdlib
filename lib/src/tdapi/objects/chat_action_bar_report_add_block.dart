part of '../tdapi.dart';

/// The chat is a private or secret chat, which can be reported using the
/// reportChat, or the other user can be blocked using the method blockUser,
/// the other user can be added to the contact list using the method
class ChatActionBarReportAddBlock extends ChatActionBar {
  ChatActionBarReportAddBlock(
      {required this.canUnarchive, required this.distance});

  /// [canUnarchive] If true, the chat was automatically archived and can be
  /// back to the main chat list using addChatToList simultaneously with setting
  /// notification settings to default using setChatNotificationSettings
  final bool canUnarchive;

  /// [distance] If non-negative, the current user was found by the peer through
  /// and this is the distance between the users
  final int distance;

  static const String CONSTRUCTOR = 'chatActionBarReportAddBlock';

  static ChatActionBarReportAddBlock? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarReportAddBlock(
        canUnarchive: json['can_unarchive'], distance: json['distance']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'can_unarchive': this.canUnarchive,
        'distance': this.distance,
        '@type': CONSTRUCTOR
      };
}
