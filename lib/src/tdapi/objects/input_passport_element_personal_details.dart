import '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's personal
class InputPassportElementPersonalDetails extends InputPassportElement {
  InputPassportElementPersonalDetails({required this.personalDetails});

  /// [personalDetails] Personal details of the user
  final PersonalDetails personalDetails;

  static const String CONSTRUCTOR = 'inputPassportElementPersonalDetails';

  static InputPassportElementPersonalDetails? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementPersonalDetails(
        personalDetails: PersonalDetails.fromJson(json['personal_details'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'personal_details': this.personalDetails.toJson(), '@type': CONSTRUCTOR};
}
