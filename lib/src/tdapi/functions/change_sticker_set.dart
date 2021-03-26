import '../tdapi.dart';

/// Installs/uninstalls or activates/archives a sticker set
/// Returns [Ok]
class ChangeStickerSet extends TdFunction {
  ChangeStickerSet(
      {required this.setId,
      required this.isInstalled,
      required this.isArchived});

  /// [setId] Identifier of the sticker set
  final int setId;

  /// [isInstalled] The new value of is_installed
  final bool isInstalled;

  /// [isArchived] The new value of is_archived. A sticker set can't be
  /// and archived simultaneously
  final bool isArchived;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'changeStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'set_id': this.setId,
        'is_installed': this.isInstalled,
        'is_archived': this.isArchived,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
