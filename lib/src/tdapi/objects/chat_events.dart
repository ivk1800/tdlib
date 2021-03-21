part of '../tdapi.dart';

/// Group.Objects
/// Contains a list of chat events
class ChatEvents extends TdObject {
  ChatEvents({required this.events});

  /// events List of events
  final List<ChatEvent> events;

  static const String CONSTRUCTOR = 'chatEvents';

  static ChatEvents? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEvents(
        events: List<ChatEvent>.from((json['events}'] ?? [])
            .map((item) => ChatEvent.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'events': this.events, '@type': CONSTRUCTOR};
}
