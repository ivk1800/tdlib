import '../tdapi.dart';

/// Describes a join response for interaction with tgcalls
class GroupCallJoinResponse extends TdObject {
  GroupCallJoinResponse(
      {required this.payload, required this.candidates, this.extra});

  /// [payload] Join response payload to pass to tgcalls
  final GroupCallPayload payload;

  /// [candidates] Join response candidates to pass to tgcalls
  final List<GroupCallJoinResponseCandidate> candidates;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'groupCallJoinResponse';

  static GroupCallJoinResponse? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallJoinResponse(
        payload: GroupCallPayload.fromJson(json['payload'])!,
        candidates: List<GroupCallJoinResponseCandidate>.from(
            (json['candidates'] ?? [])
                .map((item) => GroupCallJoinResponseCandidate.fromJson(item))
                .toList()),
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'payload': this.payload.toJson(),
        'candidates': candidates.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
