part of '../tdapi.dart';

/// New terms of service must be accepted by the user. If the terms of service
/// declined, then the deleteAccount method should be called with the reason
/// ToS update"
class UpdateTermsOfService extends Update {
  UpdateTermsOfService(
      {required this.termsOfServiceId, required this.termsOfService});

  /// [termsOfServiceId] Identifier of the terms of service
  final String termsOfServiceId;

  /// [termsOfService]_id Identifier of the terms of service
  final TermsOfService termsOfService;

  static const String CONSTRUCTOR = 'updateTermsOfService';

  static UpdateTermsOfService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTermsOfService(
        termsOfServiceId: json['terms_of_service_id'],
        termsOfService: TermsOfService.fromJson(json['terms_of_service'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'terms_of_service_id': this.termsOfServiceId,
        'terms_of_service': this.termsOfService,
        '@type': CONSTRUCTOR
      };
}
