part of '../tdapi.dart';

/// Group.Objects
/// Contains the user's personal details
class PersonalDetails extends TdObject {
  PersonalDetails(
      {required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.nativeFirstName,
      required this.nativeMiddleName,
      required this.nativeLastName,
      required this.birthdate,
      required this.gender,
      required this.countryCode,
      required this.residenceCountryCode});

  /// first_name First name of the user written in English; 1-255 characters
  final String firstName;

  /// middle_name Middle name of the user written in English; 0-255 characters
  final String middleName;

  /// last_name Last name of the user written in English; 1-255 characters
  final String lastName;

  /// native_first_name Native first name of the user; 1-255 characters
  final String nativeFirstName;

  /// native_middle_name Native middle name of the user; 0-255 characters
  final String nativeMiddleName;

  /// native_last_name Native last name of the user; 1-255 characters
  final String nativeLastName;

  /// birthdate Birthdate of the user
  final Date birthdate;

  /// gender Gender of the user, "male" or "female"
  final String gender;

  /// country_code A two-letter ISO 3166-1 alpha-2 country code of the user's country
  final String countryCode;

  /// residence_country_code A two-letter ISO 3166-1 alpha-2 country code of the user's residence country
  final String residenceCountryCode;

  static const String CONSTRUCTOR = 'personalDetails';

  static PersonalDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonalDetails(
        firstName: json['first_name'],
        middleName: json['middle_name'],
        lastName: json['last_name'],
        nativeFirstName: json['native_first_name'],
        nativeMiddleName: json['native_middle_name'],
        nativeLastName: json['native_last_name'],
        birthdate: Date.fromJson(json['birthdate'])!,
        gender: json['gender'],
        countryCode: json['country_code'],
        residenceCountryCode: json['residence_country_code']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'first_name': this.firstName,
        'middle_name': this.middleName,
        'last_name': this.lastName,
        'native_first_name': this.nativeFirstName,
        'native_middle_name': this.nativeMiddleName,
        'native_last_name': this.nativeLastName,
        'birthdate': this.birthdate,
        'gender': this.gender,
        'country_code': this.countryCode,
        'residence_country_code': this.residenceCountryCode,
        '@type': CONSTRUCTOR
      };
}
