import '../tdapi.dart';

/// Invites users to a group call. Sends a service message of type
/// for voice chats
/// Returns [Ok]
class InviteGroupCallParticipants extends TdFunction {
  InviteGroupCallParticipants(
      {required this.groupCallId, required this.userIds, this.extra});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// [userIds] User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'inviteGroupCallParticipants';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
