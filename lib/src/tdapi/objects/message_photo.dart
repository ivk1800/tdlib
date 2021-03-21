import '../tdapi.dart';

/// A photo message
class MessagePhoto extends MessageContent {
  MessagePhoto(
      {required this.photo, required this.caption, required this.isSecret});

  /// [photo] The photo description
  final Photo photo;

  /// [caption] Photo caption
  final FormattedText caption;

  /// [isSecret] True, if the photo must be blurred and must be shown only while
  final bool isSecret;

  static const String CONSTRUCTOR = 'messagePhoto';

  static MessagePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePhoto(
        photo: Photo.fromJson(json['photo'])!,
        caption: FormattedText.fromJson(json['caption'])!,
        isSecret: json['is_secret']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'photo': this.photo,
        'caption': this.caption,
        'is_secret': this.isSecret,
        '@type': CONSTRUCTOR
      };
}
