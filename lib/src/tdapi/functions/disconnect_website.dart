import '../tdapi.dart';

/// Disconnects website from the current user's Telegram account
class DisconnectWebsite extends TdFunction {
  DisconnectWebsite({required this.websiteId});

  /// [websiteId] Website identifier
  final int websiteId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'disconnectWebsite';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'website_id': this.websiteId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
