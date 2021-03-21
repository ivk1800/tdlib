part of '../tdapi.dart';

/// Finishes user registration. Works only when the current authorization
/// is authorizationStateWaitRegistration
class RegisterUser extends TdFunction {
  RegisterUser({required this.firstName, required this.lastName});

  /// [firstName] The first name of the user; 1-64 characters
  final String firstName;

  /// [lastName] The last name of the user; 0-64 characters
  final String lastName;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'registerUser';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'first_name': this.firstName,
        'last_name': this.lastName,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
