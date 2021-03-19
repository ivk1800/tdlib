part of '../tdapi.dart';

/// Group.Objects
/// The chat is public, because it has username
class PublicChatTypeHasUsername extends PublicChatType {
  const PublicChatTypeHasUsername();

  static const String CONSTRUCTOR = 'publicChatTypeHasUsername';

  static PublicChatTypeHasUsername? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PublicChatTypeHasUsername();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
