part of '../tdapi.dart';

/// Group.Objects
/// A dice message. The dice value is randomly generated by the server
class MessageDice extends MessageContent {
  MessageDice(
      {DiceStickers? this.initialState,
      DiceStickers? this.finalState,
      required this.emoji,
      required this.value,
      required this.successAnimationFrameNumber});

  /// initial_state The animated stickers with the initial dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  final DiceStickers? initialState;

  /// final_state The animated stickers with the final dice animation; may be null if unknown. updateMessageContent will be sent when the sticker became known
  final DiceStickers? finalState;

  /// emoji Emoji on which the dice throw animation is based
  final String emoji;

  /// value The dice value. If the value is 0, the dice don't have final state yet
  final int value;

  /// success_animation_frame_number Number of frame after which a success animation like a shower of confetti needs to be shown on updateMessageSendSucceeded
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
        'initial_state': this.initialState,
        'final_state': this.finalState,
        'emoji': this.emoji,
        'value': this.value,
        'success_animation_frame_number': this.successAnimationFrameNumber,
        '@type': CONSTRUCTOR
      };
}
