part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a sticker set by its identifier
class GetStickerSet extends TdFunction {
  GetStickerSet({required this.setId});

  /// set_id Identifier of the sticker set
  final int setId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'set_id': this.setId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
