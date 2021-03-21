import '../tdapi.dart';

/// Represents result of checking whether the current session can be used to
/// a chat ownership to another user
abstract class CanTransferOwnershipResult extends TdObject {
  const CanTransferOwnershipResult({this.extra});

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'canTransferOwnershipResult';

  /// Inherited by:
  /// [CanTransferOwnershipResultOk]
  /// [CanTransferOwnershipResultPasswordNeeded]
  /// [CanTransferOwnershipResultPasswordTooFresh]
  /// [CanTransferOwnershipResultSessionTooFresh]
  static CanTransferOwnershipResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case CanTransferOwnershipResultOk.CONSTRUCTOR:
        return CanTransferOwnershipResultOk.fromJson(json);
      case CanTransferOwnershipResultPasswordNeeded.CONSTRUCTOR:
        return CanTransferOwnershipResultPasswordNeeded.fromJson(json);
      case CanTransferOwnershipResultPasswordTooFresh.CONSTRUCTOR:
        return CanTransferOwnershipResultPasswordTooFresh.fromJson(json);
      case CanTransferOwnershipResultSessionTooFresh.CONSTRUCTOR:
        return CanTransferOwnershipResultSessionTooFresh.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
