part of '../tdapi.dart';

/// Returns information about a user by their identifier. This is an offline
/// if the current user is not a bot
class GetUser extends TdFunction {
  GetUser({required this.userId});

  /// [userId] User identifier
  final int userId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getUser';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
