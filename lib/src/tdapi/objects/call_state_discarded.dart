part of '../tdapi.dart';

/// The call has ended successfully
class CallStateDiscarded extends CallState {
  CallStateDiscarded(
      {required this.reason,
      required this.needRating,
      required this.needDebugInformation});

  /// [reason] The reason, why the call has ended
  final CallDiscardReason reason;

  /// [needRating] True, if the call rating should be sent to the server
  final bool needRating;

  /// [needDebugInformation] True, if the call debug information should be sent
  /// the server
  final bool needDebugInformation;

  static const String CONSTRUCTOR = 'callStateDiscarded';

  static CallStateDiscarded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateDiscarded(
        reason: CallDiscardReason.fromJson(json['reason'])!,
        needRating: json['need_rating'],
        needDebugInformation: json['need_debug_information']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'reason': this.reason,
        'need_rating': this.needRating,
        'need_debug_information': this.needDebugInformation,
        '@type': CONSTRUCTOR
      };
}
