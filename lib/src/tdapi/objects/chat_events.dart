import '../tdapi.dart';

/// Contains a list of chat events
class ChatEvents extends TdObject {
  ChatEvents({required this.events, this.extra});

  /// [events] List of events
  final List<ChatEvent> events;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'chatEvents';

  static ChatEvents? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEvents(
        events: List<ChatEvent>.from((json['events}'] ?? [])
            .map((item) => ChatEvent.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'events': events.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
