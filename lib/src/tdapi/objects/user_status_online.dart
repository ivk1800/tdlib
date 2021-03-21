part of '../tdapi.dart';

/// The user is online
class UserStatusOnline extends UserStatus {
  UserStatusOnline({required this.expires});

  /// [expires] Point in time (Unix timestamp) when the user's online status
  /// expire
  final int expires;

  static const String CONSTRUCTOR = 'userStatusOnline';

  static UserStatusOnline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusOnline(expires: json['expires']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'expires': this.expires, '@type': CONSTRUCTOR};
}
