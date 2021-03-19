part of '../tdapi.dart';

/// Group.Objects
/// A user in the chat came within proximity alert range
class MessageProximityAlertTriggered extends MessageContent {
  MessageProximityAlertTriggered(
      {required this.traveler, required this.watcher, required this.distance});

  /// traveler The user or chat, which triggered the proximity alert
  final MessageSender traveler;

  /// watcher The user or chat, which subscribed for the proximity alert
  final MessageSender watcher;

  /// distance The distance between the users
  final int distance;

  static const String CONSTRUCTOR = 'messageProximityAlertTriggered';

  static MessageProximityAlertTriggered? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageProximityAlertTriggered(
        traveler: MessageSender.fromJson(json['traveler'])!,
        watcher: MessageSender.fromJson(json['watcher'])!,
        distance: json['distance']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'traveler': this.traveler,
        'watcher': this.watcher,
        'distance': this.distance,
        '@type': CONSTRUCTOR
      };
}
