part of '../tdapi.dart';

/// Sets the current network type. Can be called before authorization. Calling this method forces all network connections to reopen, mitigating the delay in switching between different networks, so it should be called whenever the network is changed, even if the network type remains the same.. Network type is used to check whether the library can use the network at all and also for collecting detailed network data usage statistics
class SetNetworkType extends TdFunction {
  SetNetworkType({required this.type});

  /// [type] The new network type. By default, networkTypeOther
  final NetworkType type;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setNetworkType';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type, '@type': CONSTRUCTOR, '@extra': this.extra};
}
