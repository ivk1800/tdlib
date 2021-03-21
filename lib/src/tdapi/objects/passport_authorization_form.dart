import '../tdapi.dart';

/// Contains information about a Telegram Passport authorization form that was
class PassportAuthorizationForm extends TdObject {
  PassportAuthorizationForm(
      {required this.id,
      required this.requiredElements,
      required this.privacyPolicyUrl});

  /// [id] Unique identifier of the authorization form
  final int id;

  /// [requiredElements] Information about the Telegram Passport elements that
  /// be provided to complete the form
  final List<PassportRequiredElement> requiredElements;

  /// [privacyPolicyUrl] URL for the privacy policy of the service; may be empty
  final String privacyPolicyUrl;

  static const String CONSTRUCTOR = 'passportAuthorizationForm';

  static PassportAuthorizationForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportAuthorizationForm(
        id: json['id'],
        requiredElements: List<PassportRequiredElement>.from(
            (json['required_elements}'] ?? [])
                .map((item) => PassportRequiredElement.fromJson(item))
                .toList()),
        privacyPolicyUrl: json['privacy_policy_url']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'required_elements': this.requiredElements,
        'privacy_policy_url': this.privacyPolicyUrl,
        '@type': CONSTRUCTOR
      };
}
