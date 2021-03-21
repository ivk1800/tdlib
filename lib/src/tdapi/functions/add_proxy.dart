part of '../tdapi.dart';

/// Adds a proxy server for network requests. Can be called before authorization
class AddProxy extends TdFunction {
  AddProxy(
      {required this.server,
      required this.port,
      required this.enable,
      required this.type});

  /// [server] Proxy server IP address
  final String server;

  /// [port] Proxy server port
  final int port;

  /// [enable] True, if the proxy should be enabled
  final bool enable;

  /// [type] Proxy type
  final ProxyType type;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'addProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'server': this.server,
        'port': this.port,
        'enable': this.enable,
        'type': this.type,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
