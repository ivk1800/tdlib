import '../tdapi.dart';

/// Represents short information about a sticker set
class StickerSetInfo extends TdObject {
  StickerSetInfo(
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
      required this.size,
      required this.covers});

  /// [id] Identifier of the sticker set
  final int id;

  /// [title] Title of the sticker set
  final String title;

  /// [name] Name of the sticker set
  final String name;

  /// [thumbnail] Sticker set thumbnail in WEBP or TGS format with width and
  /// 100; may be null
  final Thumbnail? thumbnail;

  /// [thumbnailOutline] Sticker set thumbnail's outline represented as a list
  /// closed vector paths; may be empty. The coordinate system origin is in the
  /// corner
  final List<ClosedVectorPath> thumbnailOutline;

  /// [isInstalled] True, if the sticker set has been installed by the current
  final bool isInstalled;

  /// [isArchived] True, if the sticker set has been archived. A sticker set
  /// be installed and archived simultaneously
  final bool isArchived;

  /// [isOfficial] True, if the sticker set is official
  final bool isOfficial;

  /// [isAnimated] True, is the stickers in the set are animated
  final bool isAnimated;

  /// [isMasks] True, if the stickers in the set are masks
  final bool isMasks;

  /// [isViewed] True for already viewed trending sticker sets
  final bool isViewed;

  /// [size] Total number of stickers in the set
  final int size;

  /// [covers] Contains up to the first 5 stickers from the set, depending on
  /// context. If the application needs more stickers the full set should be
  final List<Sticker> covers;

  static const String CONSTRUCTOR = 'stickerSetInfo';

  static StickerSetInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSetInfo(
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
        size: json['size'],
        covers: List<Sticker>.from((json['covers}'] ?? [])
            .map((item) => Sticker.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'title': this.title,
        'name': this.name,
        'thumbnail': this.thumbnail?.toJson(),
        'thumbnail_outline':
            thumbnailOutline.map((item) => item.toJson()).toList(),
        'is_installed': this.isInstalled,
        'is_archived': this.isArchived,
        'is_official': this.isOfficial,
        'is_animated': this.isAnimated,
        'is_masks': this.isMasks,
        'is_viewed': this.isViewed,
        'size': this.size,
        'covers': covers.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
