part of '../tdapi.dart';

/// Group.Functions
/// Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list
class AddFavoriteSticker extends TdFunction {
  AddFavoriteSticker({required this.sticker});

  /// sticker Sticker file to add
  final InputFile sticker;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'addFavoriteSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker': this.sticker, '@type': CONSTRUCTOR, '@extra': this.extra};
}
