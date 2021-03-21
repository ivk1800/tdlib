import '../tdapi.dart';

/// Accepts Telegram terms of services
class AcceptTermsOfService extends TdFunction {
  AcceptTermsOfService({required this.termsOfServiceId});

  /// [termsOfServiceId] Terms of service identifier
  final String termsOfServiceId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'acceptTermsOfService';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'terms_of_service_id': this.termsOfServiceId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
