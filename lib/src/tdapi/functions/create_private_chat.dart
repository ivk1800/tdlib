part of '../tdapi.dart';

/// Group.Functions
/// Returns an existing chat corresponding to a given user
class CreatePrivateChat extends TdFunction {
  CreatePrivateChat({required this.userId, required this.force});

  /// user_id User identifier
  final int userId;

  /// force If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'createPrivateChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'force': this.force,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
