part of '../tdapi.dart';

/// Group.Functions
/// Clears draft messages in all chats
class ClearAllDraftMessages extends TdFunction {
  ClearAllDraftMessages({required this.excludeSecretChats});

  /// exclude_secret_chats If true, local draft messages in secret chats will not be cleared
  final bool excludeSecretChats;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'clearAllDraftMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'exclude_secret_chats': this.excludeSecretChats,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
