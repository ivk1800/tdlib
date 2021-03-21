import '../tdapi.dart';

/// Some data of a secret chat has changed. This update is guaranteed to come
/// the secret chat identifier is returned to the application
class UpdateSecretChat extends Update {
  UpdateSecretChat({required this.secretChat});

  /// [secretChat] New data about the secret chat
  final SecretChat secretChat;

  static const String CONSTRUCTOR = 'updateSecretChat';

  static UpdateSecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSecretChat(
        secretChat: SecretChat.fromJson(json['secret_chat'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'secret_chat': this.secretChat, '@type': CONSTRUCTOR};
}
