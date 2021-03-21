import '../tdapi.dart';

/// A Telegram Passport element containing the user's driver license
class PassportElementTypeDriverLicense extends PassportElementType {
  const PassportElementTypeDriverLicense();

  static const String CONSTRUCTOR = 'passportElementTypeDriverLicense';

  static PassportElementTypeDriverLicense? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeDriverLicense();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
