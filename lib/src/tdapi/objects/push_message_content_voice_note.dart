import '../tdapi.dart';

/// A voice note message
class PushMessageContentVoiceNote extends PushMessageContent {
  PushMessageContentVoiceNote(
      {VoiceNote? this.voiceNote, required this.isPinned});

  /// [voiceNote] Message content; may be null
  final VoiceNote? voiceNote;

  /// [isPinned] True, if the message is a pinned message with the specified
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentVoiceNote';

  static PushMessageContentVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentVoiceNote(
        voiceNote: VoiceNote.fromJson(json['voice_note']),
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'voice_note': this.voiceNote?.toJson(),
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
