part of '../tdapi.dart';

/// Group.Objects
/// The list of trending sticker sets was updated or some of them were viewed
class UpdateTrendingStickerSets extends Update {
  UpdateTrendingStickerSets({required this.stickerSets});

  /// sticker_sets The prefix of the list of trending sticker sets with the newest trending sticker sets
  final StickerSets stickerSets;

  static const String CONSTRUCTOR = 'updateTrendingStickerSets';

  static UpdateTrendingStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTrendingStickerSets(
        stickerSets: StickerSets.fromJson(json['sticker_sets'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker_sets': this.stickerSets, '@type': CONSTRUCTOR};
}
