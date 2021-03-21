import '../tdapi.dart';

/// An identity document
class IdentityDocument extends TdObject {
  IdentityDocument(
      {required this.number,
      Date? this.expiryDate,
      required this.frontSide,
      required this.reverseSide,
      DatedFile? this.selfie,
      required this.translation});

  /// [number] Document number; 1-24 characters
  final String number;

  /// [expiryDate] Document expiry date; may be null
  final Date? expiryDate;

  /// [frontSide] Front side of the document
  final DatedFile frontSide;

  /// [reverseSide] Reverse side of the document; only for driver license and
  /// card
  final DatedFile reverseSide;

  /// [selfie] Selfie with the document; may be null
  final DatedFile? selfie;

  /// [translation] List of files containing a certified English translation of
  /// document
  final List<DatedFile> translation;

  static const String CONSTRUCTOR = 'identityDocument';

  static IdentityDocument? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return IdentityDocument(
        number: json['number'],
        expiryDate: Date.fromJson(json['expiry_date']),
        frontSide: DatedFile.fromJson(json['front_side'])!,
        reverseSide: DatedFile.fromJson(json['reverse_side'])!,
        selfie: DatedFile.fromJson(json['selfie']),
        translation: List<DatedFile>.from((json['translation}'] ?? [])
            .map((item) => DatedFile.fromJson(item))
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
