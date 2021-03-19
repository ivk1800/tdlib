part of '../tdapi.dart';

/// Group.Classes
/// Describes the reason why a chat is reported
abstract class ChatReportReason extends TdObject {
  const ChatReportReason();

  static const String CONSTRUCTOR = 'chatReportReason';

  /// Inherited by:
  /// [ChatReportReasonSpam]
  /// [ChatReportReasonViolence]
  /// [ChatReportReasonPornography]
  /// [ChatReportReasonChildAbuse]
  /// [ChatReportReasonCopyright]
  /// [ChatReportReasonUnrelatedLocation]
  /// [ChatReportReasonCustom]
  static ChatReportReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ChatReportReasonSpam.CONSTRUCTOR:
        return ChatReportReasonSpam.fromJson(json);
      case ChatReportReasonViolence.CONSTRUCTOR:
        return ChatReportReasonViolence.fromJson(json);
      case ChatReportReasonPornography.CONSTRUCTOR:
        return ChatReportReasonPornography.fromJson(json);
      case ChatReportReasonChildAbuse.CONSTRUCTOR:
        return ChatReportReasonChildAbuse.fromJson(json);
      case ChatReportReasonCopyright.CONSTRUCTOR:
        return ChatReportReasonCopyright.fromJson(json);
      case ChatReportReasonUnrelatedLocation.CONSTRUCTOR:
        return ChatReportReasonUnrelatedLocation.fromJson(json);
      case ChatReportReasonCustom.CONSTRUCTOR:
        return ChatReportReasonCustom.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
