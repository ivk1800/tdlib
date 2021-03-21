import '../tdapi.dart';

/// The user is a member of a chat and has some additional privileges. In
/// groups, administrators can edit and delete messages sent by others, add
/// members, ban unprivileged members, and manage voice chats. In supergroups
/// channels, there are more detailed options for administrator privileges
class ChatMemberStatusAdministrator extends ChatMemberStatus {
  ChatMemberStatusAdministrator(
      {required this.customTitle,
      required this.canBeEdited,
      required this.canChangeInfo,
      required this.canPostMessages,
      required this.canEditMessages,
      required this.canDeleteMessages,
      required this.canInviteUsers,
      required this.canRestrictMembers,
      required this.canPinMessages,
      required this.canPromoteMembers,
      required this.canManageVoiceChats,
      required this.isAnonymous});

  /// [customTitle] A custom title of the administrator; 0-16 characters without
  /// applicable to supergroups only
  final String customTitle;

  /// [canBeEdited] True, if the current user can edit the administrator
  /// for the called user
  final bool canBeEdited;

  /// [canChangeInfo] True, if the administrator can change the chat title,
  /// and other settings
  final bool canChangeInfo;

  /// [canPostMessages] True, if the administrator can create channel posts;
  /// to channels only
  final bool canPostMessages;

  /// [canEditMessages] True, if the administrator can edit messages of other
  /// and pin messages; applicable to channels only
  final bool canEditMessages;

  /// [canDeleteMessages] True, if the administrator can delete messages of
  /// users
  final bool canDeleteMessages;

  /// [canInviteUsers] True, if the administrator can invite new users to the
  final bool canInviteUsers;

  /// [canRestrictMembers] True, if the administrator can restrict, ban, or
  /// chat members
  final bool canRestrictMembers;

  /// [canPinMessages] True, if the administrator can pin messages; applicable
  /// groups only
  final bool canPinMessages;

  /// [canPromoteMembers] True, if the administrator can add new administrators
  /// a subset of their own privileges or demote administrators that were
  /// or indirectly promoted by them
  final bool canPromoteMembers;

  /// [canManageVoiceChats] True, if the administrator can manage voice chats;
  /// to groups only
  final bool canManageVoiceChats;

  /// [isAnonymous] True, if the administrator isn't shown in the chat member
  /// and sends messages anonymously; applicable to supergroups only
  final bool isAnonymous;

  static const String CONSTRUCTOR = 'chatMemberStatusAdministrator';

  static ChatMemberStatusAdministrator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusAdministrator(
        customTitle: json['custom_title'],
        canBeEdited: json['can_be_edited'],
        canChangeInfo: json['can_change_info'],
        canPostMessages: json['can_post_messages'],
        canEditMessages: json['can_edit_messages'],
        canDeleteMessages: json['can_delete_messages'],
        canInviteUsers: json['can_invite_users'],
        canRestrictMembers: json['can_restrict_members'],
        canPinMessages: json['can_pin_messages'],
        canPromoteMembers: json['can_promote_members'],
        canManageVoiceChats: json['can_manage_voice_chats'],
        isAnonymous: json['is_anonymous']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'custom_title': this.customTitle,
        'can_be_edited': this.canBeEdited,
        'can_change_info': this.canChangeInfo,
        'can_post_messages': this.canPostMessages,
        'can_edit_messages': this.canEditMessages,
        'can_delete_messages': this.canDeleteMessages,
        'can_invite_users': this.canInviteUsers,
        'can_restrict_members': this.canRestrictMembers,
        'can_pin_messages': this.canPinMessages,
        'can_promote_members': this.canPromoteMembers,
        'can_manage_voice_chats': this.canManageVoiceChats,
        'is_anonymous': this.isAnonymous,
        '@type': CONSTRUCTOR
      };
}
