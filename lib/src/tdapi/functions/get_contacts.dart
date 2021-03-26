import '../tdapi.dart';

/// Returns all user contacts
/// Returns [Users]
class GetContacts extends TdFunction {
  GetContacts({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getContacts';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
