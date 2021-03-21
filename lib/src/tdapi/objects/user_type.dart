import '../tdapi.dart';

/// Represents the type of a user. The following types are possible: regular
/// deleted users and bots
abstract class UserType extends TdObject {
  const UserType();

  static const String CONSTRUCTOR = 'userType';

  /// Inherited by:
  /// [UserTypeRegular]
  /// [UserTypeDeleted]
  /// [UserTypeBot]
  /// [UserTypeUnknown]
  static UserType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case UserTypeRegular.CONSTRUCTOR:
        return UserTypeRegular.fromJson(json);
      case UserTypeDeleted.CONSTRUCTOR:
        return UserTypeDeleted.fromJson(json);
      case UserTypeBot.CONSTRUCTOR:
        return UserTypeBot.fromJson(json);
      case UserTypeUnknown.CONSTRUCTOR:
        return UserTypeUnknown.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
