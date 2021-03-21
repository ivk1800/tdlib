part of '../tdapi.dart';

/// Represents a sticker set
class StickerSet extends TdObject {
  StickerSet(
      {required this.id,
      required this.title,
      required this.name,
      Thumbnail? this.thumbnail,
      required this.thumbnailOutline,
      required this.isInstalled,
      required this.isArchived,
      required this.isOfficial,
      required this.isAnimated,
      required this.isMasks,
      required this.isViewed,
      required this.stickers,
      required this.emojis});

  /// [id] Identifier of the sticker set
  final int id;

  /// [title] Title of the sticker set
  final String title;

  /// [name] Name of the sticker set
  final String name;

  /// [thumbnail] Sticker set thumbnail in WEBP or TGS format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed
  final Thumbnail? thumbnail;

  /// [thumbnailOutline] Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner
  final List<ClosedVectorPath> thumbnailOutline;

  /// [isInstalled] True, if the sticker set has been installed by the current user
  final bool isInstalled;

  /// [isArchived] True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously
  final bool isArchived;

  /// [isOfficial] True, if the sticker set is official
  final bool isOfficial;

  /// [isAnimated] True, is the stickers in the set are animated
  final bool isAnimated;

  /// [isMasks] True, if the stickers in the set are masks
  final bool isMasks;

  /// [isViewed] True for already viewed trending sticker sets
  final bool isViewed;

  /// [stickers] List of stickers in this set
  final List<Sticker> stickers;

  /// [emojis] A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
  final List<Emojis> emojis;

  static const String CONSTRUCTOR = 'stickerSet';

  static StickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSet(
        id: int.tryParse(json['id']) ?? 0,
        title: json['title'],
        name: json['name'],
        thumbnail: Thumbnail.fromJson(json['thumbnail']),
        thumbnailOutline: List<ClosedVectorPath>.from(
            (json['thumbnail_outline}'] ?? [])
                .map((item) => ClosedVectorPath.fromJson(item))
                .toList()),
        isInstalled: json['is_installed'],
        isArchived: json['is_archived'],
        isOfficial: json['is_official'],
        isAnimated: json['is_animated'],
        isMasks: json['is_masks'],
        isViewed: json['is_viewed'],
        stickers: List<Sticker>.from((json['stickers}'] ?? [])
            .map((item) => Sticker.fromJson(item))
            .toList()),
        emojis: List<Emojis>.from((json['emojis}'] ?? [])
            .map((item) => Emojis.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'title': this.title,
        'name': this.name,
        'thumbnail': this.thumbnail,
        'thumbnail_outline': this.thumbnailOutline,
        'is_installed': this.isInstalled,
        'is_archived': this.isArchived,
        'is_official': this.isOfficial,
        'is_animated': this.isAnimated,
        'is_masks': this.isMasks,
        'is_viewed': this.isViewed,
        'stickers': this.stickers,
        'emojis': this.emojis,
        '@type': CONSTRUCTOR
      };
}
