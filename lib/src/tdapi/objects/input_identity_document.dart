part of '../tdapi.dart';

/// Group.Objects
/// An identity document to be saved to Telegram Passport
class InputIdentityDocument extends TdObject {
  InputIdentityDocument(
      {required this.number,
      required this.expiryDate,
      required this.frontSide,
      required this.reverseSide,
      required this.selfie,
      required this.translation});

  /// number Document number; 1-24 characters
  final String number;

  /// expiry_date Document expiry date, if available
  final Date expiryDate;

  /// front_side Front side of the document
  final InputFile frontSide;

  /// reverse_side Reverse side of the document; only for driver license and identity card
  final InputFile reverseSide;

  /// selfie Selfie with the document, if available
  final InputFile selfie;

  /// translation List of files containing a certified English translation of the document
  final List<InputFile> translation;

  static const String CONSTRUCTOR = 'inputIdentityDocument';

  static InputIdentityDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputIdentityDocument(
        number: json['number'],
        expiryDate: Date.fromJson(json['expiry_date'])!,
        frontSide: InputFile.fromJson(json['front_side'])!,
        reverseSide: InputFile.fromJson(json['reverse_side'])!,
        selfie: InputFile.fromJson(json['selfie'])!,
        translation: List<InputFile>.from((json['translation}'] ?? [])
            .map((item) => InputFile.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'number': this.number,
        'expiry_date': this.expiryDate,
        'front_side': this.frontSide,
        'reverse_side': this.reverseSide,
        'selfie': this.selfie,
        'translation': this.translation,
        '@type': CONSTRUCTOR
      };
}
