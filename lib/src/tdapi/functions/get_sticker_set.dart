import '../tdapi.dart';

/// Returns information about a sticker set by its identifier
/// Returns [StickerSet]
class GetStickerSet extends TdFunction {
  GetStickerSet({required this.setId});

  /// [setId] Identifier of the sticker set
  final int setId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getStickerSet';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'set_id': this.setId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
