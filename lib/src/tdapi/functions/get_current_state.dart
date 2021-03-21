part of '../tdapi.dart';

/// Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState/UpdateUser/UpdateNewChat and others. This is especially useful if TDLib is run in a separate process. Can be called before initialization
class GetCurrentState extends TdFunction {
  GetCurrentState();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getCurrentState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
