part of '../tdapi.dart';

/// Group.Objects
/// A detailed statistics about a message
class MessageStatistics extends TdObject {
  MessageStatistics({required this.messageInteractionGraph});

  /// message_interaction_graph A graph containing number of message views and shares
  final StatisticalGraph messageInteractionGraph;

  static const String CONSTRUCTOR = 'messageStatistics';

  static MessageStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageStatistics(
        messageInteractionGraph:
            StatisticalGraph.fromJson(json['message_interaction_graph'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'message_interaction_graph': this.messageInteractionGraph,
        '@type': CONSTRUCTOR
      };
}
