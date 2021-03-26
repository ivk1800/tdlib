import '../tdapi.dart';

/// Returns all active live locations that should be updated by the
/// The list is persistent across application restarts only if the message
/// is used
/// Returns [Messages]
class GetActiveLiveLocationMessages extends TdFunction {
  GetActiveLiveLocationMessages();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getActiveLiveLocationMessages';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
