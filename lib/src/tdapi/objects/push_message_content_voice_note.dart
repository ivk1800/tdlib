part of '../tdapi.dart';

/// Group.Objects
/// A voice note message
class PushMessageContentVoiceNote extends PushMessageContent {
  PushMessageContentVoiceNote(
      {VoiceNote? this.voiceNote, required this.isPinned});

  /// voice_note Message content; may be null
  final VoiceNote? voiceNote;

  /// is_pinned True, if the message is a pinned message with the specified content
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
        'voice_note': this.voiceNote,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
