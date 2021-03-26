import '../tdapi.dart';

/// Contains a list of chat members
class ChatMembers extends TdObject {
  ChatMembers({required this.totalCount, required this.members, this.extra});

  /// [totalCount] Approximate total count of chat members found
  final int totalCount;

  /// [members] A list of chat members
  final List<ChatMember> members;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'chatMembers';

  static ChatMembers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMembers(
        totalCount: json['total_count'],
        members: List<ChatMember>.from((json['members}'] ?? [])
            .map((item) => ChatMember.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'members': members.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
