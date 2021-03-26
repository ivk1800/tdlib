import '../tdapi.dart';

/// Contains information about a tg:// deep link
class DeepLinkInfo extends TdObject {
  DeepLinkInfo(
      {required this.text, required this.needUpdateApplication, this.extra});

  /// [text] Text to be shown to the user
  final FormattedText text;

  /// [needUpdateApplication] True, if user should be asked to update the
  final bool needUpdateApplication;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'deepLinkInfo';

  static DeepLinkInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DeepLinkInfo(
        text: FormattedText.fromJson(json['text'])!,
        needUpdateApplication: json['need_update_application'],
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text.toJson(),
        'need_update_application': this.needUpdateApplication,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
