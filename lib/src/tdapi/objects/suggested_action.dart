import '../tdapi.dart';

/// Describes an action suggested to the current user
abstract class SuggestedAction extends TdObject {
  const SuggestedAction();

  static const String CONSTRUCTOR = 'suggestedAction';

  /// Inherited by:
  /// [SuggestedActionEnableArchiveAndMuteNewChats]
  /// [SuggestedActionCheckPhoneNumber]
  static SuggestedAction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case SuggestedActionEnableArchiveAndMuteNewChats.CONSTRUCTOR:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionCheckPhoneNumber.CONSTRUCTOR:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
