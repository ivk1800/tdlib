part of '../tdapi.dart';

/// Group.Functions
/// Uses an invite link to add the current user to the chat if possible. The new member will not be added until the chat state has been synchronized with the server
class JoinChatByInviteLink extends TdFunction {
  JoinChatByInviteLink({required this.inviteLink});

  /// invite_link Invite link to import; should begin with "https://t.me/joinchat/", "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/"
  final String inviteLink;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'joinChatByInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invite_link': this.inviteLink,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
