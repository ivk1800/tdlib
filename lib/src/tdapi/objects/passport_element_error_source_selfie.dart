part of '../tdapi.dart';

/// Group.Objects
/// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes
class PassportElementErrorSourceSelfie extends PassportElementErrorSource {
  const PassportElementErrorSourceSelfie();

  static const String CONSTRUCTOR = 'passportElementErrorSourceSelfie';

  static PassportElementErrorSourceSelfie? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceSelfie();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
