part of '../tdapi.dart';

/// Group.Functions
/// Checks whether the current session can be used to transfer a chat ownership to another user
class CanTransferOwnership extends TdFunction {
  CanTransferOwnership();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'canTransferOwnership';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
