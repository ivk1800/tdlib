part of '../tdapi.dart';

/// Describes an audio file. Audio is usually in MP3 or M4A format
class Audio extends TdObject {
  Audio(
      {required this.duration,
      required this.title,
      required this.performer,
      required this.fileName,
      required this.mimeType,
      Minithumbnail? this.albumCoverMinithumbnail,
      Thumbnail? this.albumCoverThumbnail,
      required this.audio});

  /// [duration] Duration of the audio, in seconds; as defined by the sender
  final int duration;

  /// [title] Title of the audio; as defined by the sender
  final String title;

  /// [performer] Performer of the audio; as defined by the sender
  final String performer;

  /// [fileName] Original name of the file; as defined by the sender
  final String fileName;

  /// [mimeType] The MIME type of the file; as defined by the sender
  final String mimeType;

  /// [albumCoverMinithumbnail] The minithumbnail of the album cover; may be
  final Minithumbnail? albumCoverMinithumbnail;

  /// [albumCoverThumbnail] The thumbnail of the album cover in JPEG format; as
  /// by the sender. The full size thumbnail should be extracted from the
  /// file; may be null
  final Thumbnail? albumCoverThumbnail;

  /// [audio] File containing the audio
  final File audio;

  static const String CONSTRUCTOR = 'audio';

  static Audio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Audio(
        duration: json['duration'],
        title: json['title'],
        performer: json['performer'],
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        albumCoverMinithumbnail:
            Minithumbnail.fromJson(json['album_cover_minithumbnail']),
        albumCoverThumbnail: Thumbnail.fromJson(json['album_cover_thumbnail']),
        audio: File.fromJson(json['audio'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'duration': this.duration,
        'title': this.title,
        'performer': this.performer,
        'file_name': this.fileName,
        'mime_type': this.mimeType,
        'album_cover_minithumbnail': this.albumCoverMinithumbnail,
        'album_cover_thumbnail': this.albumCoverThumbnail,
        'audio': this.audio,
        '@type': CONSTRUCTOR
      };
}
