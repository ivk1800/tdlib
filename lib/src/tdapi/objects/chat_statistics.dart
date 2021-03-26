import '../tdapi.dart';

/// Contains a detailed statistics about a chat
abstract class ChatStatistics extends TdObject {
  const ChatStatistics({this.extra});

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'chatStatistics';

  /// Inherited by:
  /// [ChatStatisticsSupergroup]
  /// [ChatStatisticsChannel]
  static ChatStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ChatStatisticsSupergroup.CONSTRUCTOR:
        return ChatStatisticsSupergroup.fromJson(json);
      case ChatStatisticsChannel.CONSTRUCTOR:
        return ChatStatisticsChannel.fromJson(json);
      default:
        return null;
    }
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
}
