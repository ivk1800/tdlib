part of '../tdapi.dart';

/// Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers
class Supergroup extends TdObject {
  Supergroup(
      {required this.id,
      required this.username,
      required this.date,
      required this.status,
      required this.memberCount,
      required this.hasLinkedChat,
      required this.hasLocation,
      required this.signMessages,
      required this.isSlowModeEnabled,
      required this.isChannel,
      required this.isVerified,
      required this.restrictionReason,
      required this.isScam});

  /// [id] Supergroup or channel identifier
  final int id;

  /// [username] Username of the supergroup or channel; empty for private supergroups or channels
  final String username;

  /// [date] Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member
  final int date;

  /// [status] Status of the current user in the supergroup or channel; custom title will be always empty
  final ChatMemberStatus status;

  /// [memberCount] Number of members in the supergroup or channel; 0 if unknown. Currently it is guaranteed to be known only if the supergroup or channel was received through searchPublicChats, searchChatsNearby, getInactiveSupergroupChats, getSuitableDiscussionChats, getGroupsInCommon, or getUserPrivacySettingRules
  final int memberCount;

  /// [hasLinkedChat] True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel
  final bool hasLinkedChat;

  /// [hasLocation] True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup
  final bool hasLocation;

  /// [signMessages] True, if messages sent to the channel should contain information about the sender. This field is only applicable to channels
  final bool signMessages;

  /// [isSlowModeEnabled] True, if the slow mode is enabled in the supergroup
  final bool isSlowModeEnabled;

  /// [isChannel] True, if the supergroup is a channel
  final bool isChannel;

  /// [isVerified] True, if the supergroup or channel is verified
  final bool isVerified;

  /// [restrictionReason] If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted
  final String restrictionReason;

  /// [isScam] True, if many users reported this supergroup as a scam
  final bool isScam;

  static const String CONSTRUCTOR = 'supergroup';

  static Supergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Supergroup(
        id: json['id'],
        username: json['username'],
        date: json['date'],
        status: ChatMemberStatus.fromJson(json['status'])!,
        memberCount: json['member_count'],
        hasLinkedChat: json['has_linked_chat'],
        hasLocation: json['has_location'],
        signMessages: json['sign_messages'],
        isSlowModeEnabled: json['is_slow_mode_enabled'],
        isChannel: json['is_channel'],
        isVerified: json['is_verified'],
        restrictionReason: json['restriction_reason'],
        isScam: json['is_scam']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'username': this.username,
        'date': this.date,
        'status': this.status,
        'member_count': this.memberCount,
        'has_linked_chat': this.hasLinkedChat,
        'has_location': this.hasLocation,
        'sign_messages': this.signMessages,
        'is_slow_mode_enabled': this.isSlowModeEnabled,
        'is_channel': this.isChannel,
        'is_verified': this.isVerified,
        'restriction_reason': this.restrictionReason,
        'is_scam': this.isScam,
        '@type': CONSTRUCTOR
      };
}
