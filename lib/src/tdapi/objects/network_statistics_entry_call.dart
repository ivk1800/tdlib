part of '../tdapi.dart';

/// Group.Objects
/// Contains information about the total amount of data that was used for calls
class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  NetworkStatisticsEntryCall(
      {required this.networkType,
      required this.sentBytes,
      required this.receivedBytes,
      required this.duration});

  /// network_type Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  final NetworkType networkType;

  /// sent_bytes Total number of bytes sent
  final int sentBytes;

  /// received_bytes Total number of bytes received
  final int receivedBytes;

  /// duration Total call duration, in seconds
  final double duration;

  static const String CONSTRUCTOR = 'networkStatisticsEntryCall';

  static NetworkStatisticsEntryCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatisticsEntryCall(
        networkType: NetworkType.fromJson(json['network_type'])!,
        sentBytes: json['sent_bytes'],
        receivedBytes: json['received_bytes'],
        duration: json['duration']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'network_type': this.networkType,
        'sent_bytes': this.sentBytes,
        'received_bytes': this.receivedBytes,
        'duration': this.duration,
        '@type': CONSTRUCTOR
      };
}
