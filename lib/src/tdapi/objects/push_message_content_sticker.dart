import '../tdapi.dart';

/// A message with a sticker
class PushMessageContentSticker extends PushMessageContent {
  PushMessageContentSticker(
      {Sticker? this.sticker, required this.emoji, required this.isPinned});

  /// [sticker] Message content; may be null
  final Sticker? sticker;

  /// [emoji] Emoji corresponding to the sticker; may be empty
  final String emoji;

  /// [isPinned] True, if the message is a pinned message with the specified
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentSticker';

  static PushMessageContentSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentSticker(
        sticker: Sticker.fromJson(json['sticker']),
        emoji: json['emoji'],
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker': this.sticker,
        'emoji': this.emoji,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
