part of '../tdapi.dart';

/// A Telegram Passport element to be saved containing the user's temporary registration
class InputPassportElementTemporaryRegistration extends InputPassportElement {
  InputPassportElementTemporaryRegistration(
      {required this.temporaryRegistration});

  /// [temporaryRegistration] The temporary registration document to be saved
  final InputPersonalDocument temporaryRegistration;

  static const String CONSTRUCTOR = 'inputPassportElementTemporaryRegistration';

  static InputPassportElementTemporaryRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPassportElementTemporaryRegistration(
        temporaryRegistration:
            InputPersonalDocument.fromJson(json['temporary_registration'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'temporary_registration': this.temporaryRegistration,
        '@type': CONSTRUCTOR
      };
}
