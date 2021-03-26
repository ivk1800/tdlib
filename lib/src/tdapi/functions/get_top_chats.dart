import '../tdapi.dart';

/// Returns a list of frequently used chats. Supported only if the chat info
/// is enabled
/// Returns [Chats]
class GetTopChats extends TdFunction {
  GetTopChats({required this.category, required this.limit});

  /// [category] Category of chats to be returned
  final TopChatCategory category;

  /// [limit] The maximum number of chats to be returned; up to 30
  final int limit;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getTopChats';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'category': this.category.toJson(),
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
