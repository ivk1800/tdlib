part of '../tdapi.dart';

/// Group.Objects
/// The thumbnail is in MPEG4 format. It will be used only for some animations and videos
class ThumbnailFormatMpeg4 extends ThumbnailFormat {
  const ThumbnailFormatMpeg4();

  static const String CONSTRUCTOR = 'thumbnailFormatMpeg4';

  static ThumbnailFormatMpeg4? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatMpeg4();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
