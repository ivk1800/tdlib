part of '../tdapi.dart';

/// Group.Objects
/// Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query
class InlineQueryResults extends TdObject {
  InlineQueryResults(
      {required this.inlineQueryId,
      required this.nextOffset,
      required this.results,
      required this.switchPmText,
      required this.switchPmParameter});

  /// inline_query_id Unique identifier of the inline query
  final int inlineQueryId;

  /// next_offset The offset for the next request. If empty, there are no more results
  final String nextOffset;

  /// results Results of the query
  final List<InlineQueryResult> results;

  /// switch_pm_text If non-empty, this text should be shown on the button, which opens a private chat with the bot and sends the bot a start message with the switch_pm_parameter
  final String switchPmText;

  /// switch_pm_parameter Parameter for the bot start message
  final String switchPmParameter;

  static const String CONSTRUCTOR = 'inlineQueryResults';

  static InlineQueryResults? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResults(
        inlineQueryId: int.tryParse(json['inline_query_id']) ?? 0,
        nextOffset: json['next_offset'],
        results: List<InlineQueryResult>.from((json['results}'] ?? [])
            .map((item) => InlineQueryResult.fromJson(item))
            .toList()),
        switchPmText: json['switch_pm_text'],
        switchPmParameter: json['switch_pm_parameter']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_query_id': this.inlineQueryId,
        'next_offset': this.nextOffset,
        'results': this.results,
        'switch_pm_text': this.switchPmText,
        'switch_pm_parameter': this.switchPmParameter,
        '@type': CONSTRUCTOR
      };
}
