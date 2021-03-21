import '../tdapi.dart';

/// Sets the result of a callback query; for bots only
class AnswerCallbackQuery extends TdFunction {
  AnswerCallbackQuery(
      {required this.callbackQueryId,
      required this.text,
      required this.showAlert,
      required this.url,
      required this.cacheTime});

  /// [callbackQueryId] Identifier of the callback query
  final int callbackQueryId;

  /// [text] Text of the answer
  final String text;

  /// [showAlert] If true, an alert should be shown to the user instead of a
  /// notification
  final bool showAlert;

  /// [url] URL to be opened
  final String url;

  /// [cacheTime] Time during which the result of the query can be cached, in
  final int cacheTime;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'answerCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'callback_query_id': this.callbackQueryId,
        'text': this.text,
        'show_alert': this.showAlert,
        'url': this.url,
        'cache_time': this.cacheTime,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
