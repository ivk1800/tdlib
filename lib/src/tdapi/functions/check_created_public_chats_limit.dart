import '../tdapi.dart';

/// Checks whether the maximum number of owned public chats has been reached.
/// corresponding error if the limit was reached
/// Returns [Ok]
class CheckCreatedPublicChatsLimit extends TdFunction {
  CheckCreatedPublicChatsLimit({required this.type, this.extra});

  /// [type] Type of the public chats, for which to check the limit
  final PublicChatType type;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'checkCreatedPublicChatsLimit';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type.toJson(), '@type': CONSTRUCTOR, '@extra': this.extra};
}
