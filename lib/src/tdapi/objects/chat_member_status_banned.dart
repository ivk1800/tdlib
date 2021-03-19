part of '../tdapi.dart';

/// Group.Objects
/// The user was banned (and hence is not a member of the chat). Implies the user can't return to the chat or view messages
class ChatMemberStatusBanned extends ChatMemberStatus {
  ChatMemberStatusBanned({required this.bannedUntilDate});

  /// banned_until_date Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever
  final int bannedUntilDate;

  static const String CONSTRUCTOR = 'chatMemberStatusBanned';

  static ChatMemberStatusBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMemberStatusBanned(bannedUntilDate: json['banned_until_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'banned_until_date': this.bannedUntilDate, '@type': CONSTRUCTOR};
}
