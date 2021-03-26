import '../tdapi.dart';

/// Returns information about a group call
/// Returns [GroupCall]
class GetGroupCall extends TdFunction {
  GetGroupCall({required this.groupCallId});

  /// [groupCallId] Group call identifier
  final int groupCallId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getGroupCall';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'group_call_id': this.groupCallId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
