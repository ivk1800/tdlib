part of '../tdapi.dart';

/// Group.Functions
/// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info rights
class SetChatPhoto extends TdFunction {
  SetChatPhoto({required this.chatId, required this.photo});

  /// chat_id Chat identifier
  final int chatId;

  /// photo New chat photo. Pass null to delete the chat photo
  final InputChatPhoto photo;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'photo': this.photo,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
