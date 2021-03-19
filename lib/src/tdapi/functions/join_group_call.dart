part of '../tdapi.dart';

/// Group.Functions
/// Joins a group call
class JoinGroupCall extends TdFunction {
  JoinGroupCall(
      {required this.groupCallId,
      required this.payload,
      required this.source,
      required this.isMuted});

  /// group_call_id Group call identifier
  final int groupCallId;

  /// payload Group join payload, received from tgcalls. Use null to cancel previous joinGroupCall request
  final GroupCallPayload payload;

  /// source Caller synchronization source identifier; received from tgcalls
  final int source;

  /// is_muted True, if the user's microphone is muted
  final bool isMuted;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'joinGroupCall';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'payload': this.payload,
        'source': this.source,
        'is_muted': this.isMuted,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
