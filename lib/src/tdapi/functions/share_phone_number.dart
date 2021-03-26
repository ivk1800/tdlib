import '../tdapi.dart';

/// Shares the phone number of the current user with a mutual contact.
/// to be called when the user clicks on chatActionBarSharePhoneNumber
/// Returns [Ok]
class SharePhoneNumber extends TdFunction {
  SharePhoneNumber({required this.userId});

  /// [userId] Identifier of the user with whom to share the phone number. The
  /// must be a mutual contact
  final int userId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sharePhoneNumber';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
