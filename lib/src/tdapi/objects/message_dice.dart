import '../tdapi.dart';

/// A dice message. The dice value is randomly generated by the server
class MessageDice extends MessageContent {
  MessageDice(
      {this.initialState,
      this.finalState,
      required this.emoji,
      required this.value,
      required this.successAnimationFrameNumber});

  /// [initialState] The animated stickers with the initial dice animation; may
  /// null if unknown. updateMessageContent will be sent when the sticker became
  final DiceStickers? initialState;

  /// [finalState] The animated stickers with the final dice animation; may be
  /// if unknown. updateMessageContent will be sent when the sticker became
  final DiceStickers? finalState;

  /// [emoji] Emoji on which the dice throw animation is based
  final String emoji;

  /// [value] The dice value. If the value is 0, the dice don't have final state
  final int value;

  /// [successAnimationFrameNumber] Number of frame after which a success
  /// like a shower of confetti needs to be shown on updateMessageSendSucceeded
  final int successAnimationFrameNumber;

  static const String CONSTRUCTOR = 'messageDice';

  static MessageDice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageDice(
        initialState: DiceStickers.fromJson(json['initial_state']),
        finalState: DiceStickers.fromJson(json['final_state']),
        emoji: json['emoji'],
        value: json['value'],
        successAnimationFrameNumber: json['success_animation_frame_number']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'initial_state': this.initialState?.toJson(),
        'final_state': this.finalState?.toJson(),
        'emoji': this.emoji,
        'value': this.value,
        'success_animation_frame_number': this.successAnimationFrameNumber,
        '@type': CONSTRUCTOR
      };
}
