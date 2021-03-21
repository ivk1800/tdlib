import '../tdapi.dart';

/// Contains information about an encrypted Telegram Passport element; for
/// only
class EncryptedPassportElement extends TdObject {
  EncryptedPassportElement(
      {required this.type,
      required this.data,
      required this.frontSide,
      DatedFile? this.reverseSide,
      DatedFile? this.selfie,
      required this.translation,
      required this.files,
      required this.value,
      required this.hash});

  /// [type] Type of Telegram Passport element
  final PassportElementType type;

  /// [data] Encrypted JSON-encoded data about the user
  final String data;

  /// [frontSide] The front side of an identity document
  final DatedFile frontSide;

  /// [reverseSide] The reverse side of an identity document; may be null
  final DatedFile? reverseSide;

  /// [selfie] Selfie with the document; may be null
  final DatedFile? selfie;

  /// [translation] List of files containing a certified English translation of
  /// document
  final List<DatedFile> translation;

  /// [files] List of attached files
  final List<DatedFile> files;

  /// [value] Unencrypted data, phone number or email address
  final String value;

  /// [hash] Hash of the entire element
  final String hash;

  static const String CONSTRUCTOR = 'encryptedPassportElement';

  static EncryptedPassportElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return EncryptedPassportElement(
        type: PassportElementType.fromJson(json['type'])!,
        data: json['data'],
        frontSide: DatedFile.fromJson(json['front_side'])!,
        reverseSide: DatedFile.fromJson(json['reverse_side']),
        selfie: DatedFile.fromJson(json['selfie']),
        translation: List<DatedFile>.from((json['translation}'] ?? [])
            .map((item) => DatedFile.fromJson(item))
            .toList()),
        files: List<DatedFile>.from((json['files}'] ?? [])
            .map((item) => DatedFile.fromJson(item))
            .toList()),
        value: json['value'],
        hash: json['hash']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'type': this.type,
        'data': this.data,
        'front_side': this.frontSide,
        'reverse_side': this.reverseSide,
        'selfie': this.selfie,
        'translation': this.translation,
        'files': this.files,
        'value': this.value,
        'hash': this.hash,
        '@type': CONSTRUCTOR
      };
}
