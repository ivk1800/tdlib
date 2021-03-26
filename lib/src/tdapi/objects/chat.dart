import '../tdapi.dart';

/// A chat. (Can be a private chat, basic group, supergroup, or secret chat)
class Chat extends TdObject {
  Chat(
      {required this.id,
      required this.type,
      required this.title,
      ChatPhotoInfo? this.photo,
      required this.permissions,
      Message? this.lastMessage,
      required this.positions,
      required this.isMarkedAsUnread,
      required this.isBlocked,
      required this.hasScheduledMessages,
      required this.canBeDeletedOnlyForSelf,
      required this.canBeDeletedForAllUsers,
      required this.canBeReported,
      required this.defaultDisableNotification,
      required this.unreadCount,
      required this.lastReadInboxMessageId,
      required this.lastReadOutboxMessageId,
      required this.unreadMentionCount,
      required this.notificationSettings,
      ChatActionBar? this.actionBar,
      required this.voiceChatGroupCallId,
      required this.isVoiceChatEmpty,
      required this.replyMarkupMessageId,
      DraftMessage? this.draftMessage,
      required this.clientData,
      this.extra});

  /// [id] Chat unique identifier
  final int id;

  /// [type] Type of the chat
  final ChatType type;

  /// [title] Chat title
  final String title;

  /// [photo] Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// [permissions] Actions that non-administrator chat members are allowed to
  /// in the chat
  final ChatPermissions permissions;

  /// [lastMessage] Last message in the chat; may be null
  final Message? lastMessage;

  /// [positions] Positions of the chat in chat lists
  final List<ChatPosition> positions;

  /// [isMarkedAsUnread] True, if the chat is marked as unread
  final bool isMarkedAsUnread;

  /// [isBlocked] True, if the chat is blocked by the current user and private
  /// from the chat can't be received
  final bool isBlocked;

  /// [hasScheduledMessages] True, if the chat has scheduled messages
  final bool hasScheduledMessages;

  /// [canBeDeletedOnlyForSelf] True, if the chat messages can be deleted only
  /// the current user while other users will continue to see the messages
  final bool canBeDeletedOnlyForSelf;

  /// [canBeDeletedForAllUsers] True, if the chat messages can be deleted for
  /// users
  final bool canBeDeletedForAllUsers;

  /// [canBeReported] True, if the chat can be reported to Telegram moderators
  /// reportChat
  final bool canBeReported;

  /// [defaultDisableNotification] Default value of the disable_notification
  /// used when a message is sent to the chat
  final bool defaultDisableNotification;

  /// [unreadCount] Number of unread messages in the chat
  final int unreadCount;

  /// [lastReadInboxMessageId] Identifier of the last read incoming message
  final int lastReadInboxMessageId;

  /// [lastReadOutboxMessageId] Identifier of the last read outgoing message
  final int lastReadOutboxMessageId;

  /// [unreadMentionCount] Number of unread messages with a mention/reply in the
  final int unreadMentionCount;

  /// [notificationSettings] Notification settings for this chat
  final ChatNotificationSettings notificationSettings;

  /// [actionBar] Describes actions which should be possible to do through a
  /// action bar; may be null
  final ChatActionBar? actionBar;

  /// [voiceChatGroupCallId] Group call identifier of an active voice chat; 0 if
  /// or unknown. The voice chat can be received through the method getGroupCall
  final int voiceChatGroupCallId;

  /// [isVoiceChatEmpty] True, if an active voice chat is empty
  final bool isVoiceChatEmpty;

  /// [replyMarkupMessageId] Identifier of the message from which reply markup
  /// to be used; 0 if there is no default custom reply markup in the chat
  final int replyMarkupMessageId;

  /// [draftMessage] A draft of a message in the chat; may be null
  final DraftMessage? draftMessage;

  /// [clientData] Contains application-specific data associated with the chat.
  /// example, the chat scroll position or local chat notification settings can
  /// stored here.) Persistent if the message database is used
  final String clientData;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'chat';

  static Chat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chat(
        id: json['id'],
        type: ChatType.fromJson(json['type'])!,
        title: json['title'],
        photo: ChatPhotoInfo.fromJson(json['photo']),
        permissions: ChatPermissions.fromJson(json['permissions'])!,
        lastMessage: Message.fromJson(json['last_message']),
        positions: List<ChatPosition>.from((json['positions}'] ?? [])
            .map((item) => ChatPosition.fromJson(item))
            .toList()),
        isMarkedAsUnread: json['is_marked_as_unread'],
        isBlocked: json['is_blocked'],
        hasScheduledMessages: json['has_scheduled_messages'],
        canBeDeletedOnlyForSelf: json['can_be_deleted_only_for_self'],
        canBeDeletedForAllUsers: json['can_be_deleted_for_all_users'],
        canBeReported: json['can_be_reported'],
        defaultDisableNotification: json['default_disable_notification'],
        unreadCount: json['unread_count'],
        lastReadInboxMessageId: json['last_read_inbox_message_id'],
        lastReadOutboxMessageId: json['last_read_outbox_message_id'],
        unreadMentionCount: json['unread_mention_count'],
        notificationSettings:
            ChatNotificationSettings.fromJson(json['notification_settings'])!,
        actionBar: ChatActionBar.fromJson(json['action_bar']),
        voiceChatGroupCallId: json['voice_chat_group_call_id'],
        isVoiceChatEmpty: json['is_voice_chat_empty'],
        replyMarkupMessageId: json['reply_markup_message_id'],
        draftMessage: DraftMessage.fromJson(json['draft_message']),
        clientData: json['client_data'],
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'type': this.type.toJson(),
        'title': this.title,
        'photo': this.photo?.toJson(),
        'permissions': this.permissions.toJson(),
        'last_message': this.lastMessage?.toJson(),
        'positions': positions.map((item) => item.toJson()).toList(),
        'is_marked_as_unread': this.isMarkedAsUnread,
        'is_blocked': this.isBlocked,
        'has_scheduled_messages': this.hasScheduledMessages,
        'can_be_deleted_only_for_self': this.canBeDeletedOnlyForSelf,
        'can_be_deleted_for_all_users': this.canBeDeletedForAllUsers,
        'can_be_reported': this.canBeReported,
        'default_disable_notification': this.defaultDisableNotification,
        'unread_count': this.unreadCount,
        'last_read_inbox_message_id': this.lastReadInboxMessageId,
        'last_read_outbox_message_id': this.lastReadOutboxMessageId,
        'unread_mention_count': this.unreadMentionCount,
        'notification_settings': this.notificationSettings.toJson(),
        'action_bar': this.actionBar?.toJson(),
        'voice_chat_group_call_id': this.voiceChatGroupCallId,
        'is_voice_chat_empty': this.isVoiceChatEmpty,
        'reply_markup_message_id': this.replyMarkupMessageId,
        'draft_message': this.draftMessage?.toJson(),
        'client_data': this.clientData,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
