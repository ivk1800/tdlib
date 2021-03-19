part of '../tdapi.dart';

/// Group.Objects
/// A full list of available network statistic entries
class NetworkStatistics extends TdObject {
  NetworkStatistics({required this.sinceDate, required this.entries});

  /// since_date Point in time (Unix timestamp) from which the statistics are collected
  final int sinceDate;

  /// entries Network statistics entries
  final List<NetworkStatisticsEntry> entries;

  static const String CONSTRUCTOR = 'networkStatistics';

  static NetworkStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatistics(
        sinceDate: json['since_date'],
        entries: List<NetworkStatisticsEntry>.from((json['entries}'] ?? [])
            .map((item) => NetworkStatisticsEntry.fromJson(
                json['NetworkStatisticsEntry'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'since_date': this.sinceDate,
        'entries': this.entries,
        '@type': CONSTRUCTOR
      };
}
