import '../tdapi.dart';

/// Sets the result of a shipping query; for bots only
/// Returns [Ok]
class AnswerShippingQuery extends TdFunction {
  AnswerShippingQuery(
      {required this.shippingQueryId,
      required this.shippingOptions,
      required this.errorMessage,
      this.extra});

  /// [shippingQueryId] Identifier of the shipping query
  final int shippingQueryId;

  /// [shippingOptions] Available shipping options
  final List<ShippingOption> shippingOptions;

  /// [errorMessage] An error message, empty on success
  final String errorMessage;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'answerShippingQuery';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'shipping_query_id': this.shippingQueryId,
        'shipping_options':
            shippingOptions.map((item) => item.toJson()).toList(),
        'error_message': this.errorMessage,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
