part of '../tdapi.dart';

/// An audio message
class InputMessageAudio extends InputMessageContent {
  InputMessageAudio(
      {required this.audio,
      required this.albumCoverThumbnail,
      required this.duration,
      required this.title,
      required this.performer,
      required this.caption});

  /// [audio] Audio file to be sent
  final InputFile audio;

  /// [albumCoverThumbnail] Thumbnail of the cover for the album, if available
  final InputThumbnail albumCoverThumbnail;

  /// [duration] Duration of the audio, in seconds; may be replaced by the
  ///
  final int duration;

  /// [title] Title of the audio; 0-64 characters; may be replaced by the server
  final String title;

  /// [performer] Performer of the audio; 0-64 characters, may be replaced by
  /// server
  final String performer;

  /// [caption] Audio caption; 0-GetOption("message_caption_length_max")
  final FormattedText caption;

  static const String CONSTRUCTOR = 'inputMessageAudio';

  static InputMessageAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageAudio(
        audio: InputFile.fromJson(json['audio'])!,
        albumCoverThumbnail:
            InputThumbnail.fromJson(json['album_cover_thumbnail'])!,
        duration: json['duration'],
        title: json['title'],
        performer: json['performer'],
        caption: FormattedText.fromJson(json['caption'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'audio': this.audio,
        'album_cover_thumbnail': this.albumCoverThumbnail,
        'duration': this.duration,
        'title': this.title,
        'performer': this.performer,
        'caption': this.caption,
        '@type': CONSTRUCTOR
      };
}
