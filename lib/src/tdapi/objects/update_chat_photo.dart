part of '../tdapi.dart';

/// Group.Objects
/// A chat photo was changed
class UpdateChatPhoto extends Update {
  UpdateChatPhoto({required this.chatId, ChatPhotoInfo? this.photo});

  /// chat_id Chat identifier
  final int chatId;

  /// photo The new chat photo; may be null
  final ChatPhotoInfo? photo;

  static const String CONSTRUCTOR = 'updateChatPhoto';

  static UpdateChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatPhoto(
        chatId: json['chat_id'], photo: ChatPhotoInfo.fromJson(json['photo']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'photo': this.photo, '@type': CONSTRUCTOR};
}
