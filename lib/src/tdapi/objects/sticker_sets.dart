import '../tdapi.dart';

/// Represents a list of sticker sets
class StickerSets extends TdObject {
  StickerSets({required this.totalCount, required this.sets, this.extra});

  /// [totalCount] Approximate total number of sticker sets found
  final int totalCount;

  /// [sets] List of sticker sets
  final List<StickerSetInfo> sets;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'stickerSets';

  static StickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSets(
        totalCount: json['total_count'],
        sets: List<StickerSetInfo>.from((json['sets}'] ?? [])
            .map((item) => StickerSetInfo.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'sets': sets.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
