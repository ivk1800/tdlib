import '../tdapi.dart';

/// Confirms QR code authentication on another device. Returns created session
/// success
/// Returns [Session]
class ConfirmQrCodeAuthentication extends TdFunction {
  ConfirmQrCodeAuthentication({required this.link, this.extra});

  /// [link] A link from a QR code. The link must be scanned by the in-app
  final String link;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'confirmQrCodeAuthentication';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'link': this.link, '@type': CONSTRUCTOR, '@extra': this.extra};
}
