import '../tdapi.dart';

/// Information about a group call participant was changed. The updates are
/// only after the group call is received through getGroupCall and only if the
/// is joined or being joined
class UpdateGroupCallParticipant extends Update {
  UpdateGroupCallParticipant(
      {required this.groupCallId, required this.participant});

  /// [groupCallId] Identifier of group call
  final int groupCallId;

  /// [participant] New data about a participant
  final GroupCallParticipant participant;

  static const String CONSTRUCTOR = 'updateGroupCallParticipant';

  static UpdateGroupCallParticipant? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallParticipant(
        groupCallId: json['group_call_id'],
        participant: GroupCallParticipant.fromJson(json['participant'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'participant': this.participant.toJson(),
        '@type': CONSTRUCTOR
      };
}
