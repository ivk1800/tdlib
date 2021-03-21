part of '../tdapi.dart';

/// Describes a location on planet Earth
class Location extends TdObject {
  Location(
      {required this.latitude,
      required this.longitude,
      required this.horizontalAccuracy});

  /// [latitude] Latitude of the location in degrees; as defined by the sender
  final double latitude;

  /// [longitude] Longitude of the location, in degrees; as defined by the
  final double longitude;

  /// [horizontalAccuracy] The estimated horizontal accuracy of the location, in
  /// as defined by the sender. 0 if unknown
  final double horizontalAccuracy;

  static const String CONSTRUCTOR = 'location';

  static Location? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Location(
        latitude: json['latitude'],
        longitude: json['longitude'],
        horizontalAccuracy: json['horizontal_accuracy']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'latitude': this.latitude,
        'longitude': this.longitude,
        'horizontal_accuracy': this.horizontalAccuracy,
        '@type': CONSTRUCTOR
      };
}
