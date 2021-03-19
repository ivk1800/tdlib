part of '../tdapi.dart';

/// Group.Objects
/// Represents a set of filters used to obtain a chat event log
class ChatEventLogFilters extends TdObject {
  ChatEventLogFilters(
      {required this.messageEdits,
      required this.messageDeletions,
      required this.messagePins,
      required this.memberJoins,
      required this.memberLeaves,
      required this.memberInvites,
      required this.memberPromotions,
      required this.memberRestrictions,
      required this.infoChanges,
      required this.settingChanges,
      required this.voiceChatChanges});

  /// message_edits True, if message edits should be returned
  final bool messageEdits;

  /// message_deletions True, if message deletions should be returned
  final bool messageDeletions;

  /// message_pins True, if pin/unpin events should be returned
  final bool messagePins;

  /// member_joins True, if members joining events should be returned
  final bool memberJoins;

  /// member_leaves True, if members leaving events should be returned
  final bool memberLeaves;

  /// member_invites True, if invited member events should be returned
  final bool memberInvites;

  /// member_promotions True, if member promotion/demotion events should be returned
  final bool memberPromotions;

  /// member_restrictions True, if member restricted/unrestricted/banned/unbanned events should be returned
  final bool memberRestrictions;

  /// info_changes True, if changes in chat information should be returned
  final bool infoChanges;

  /// setting_changes True, if changes in chat settings should be returned
  final bool settingChanges;

  /// voice_chat_changes True, if voice chat actions should be returned
  final bool voiceChatChanges;

  static const String CONSTRUCTOR = 'chatEventLogFilters';

  static ChatEventLogFilters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLogFilters(
        messageEdits: json['message_edits'],
        messageDeletions: json['message_deletions'],
        messagePins: json['message_pins'],
        memberJoins: json['member_joins'],
        memberLeaves: json['member_leaves'],
        memberInvites: json['member_invites'],
        memberPromotions: json['member_promotions'],
        memberRestrictions: json['member_restrictions'],
        infoChanges: json['info_changes'],
        settingChanges: json['setting_changes'],
        voiceChatChanges: json['voice_chat_changes']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'message_edits': this.messageEdits,
        'message_deletions': this.messageDeletions,
        'message_pins': this.messagePins,
        'member_joins': this.memberJoins,
        'member_leaves': this.memberLeaves,
        'member_invites': this.memberInvites,
        'member_promotions': this.memberPromotions,
        'member_restrictions': this.memberRestrictions,
        'info_changes': this.infoChanges,
        'setting_changes': this.settingChanges,
        'voice_chat_changes': this.voiceChatChanges,
        '@type': CONSTRUCTOR
      };
}
