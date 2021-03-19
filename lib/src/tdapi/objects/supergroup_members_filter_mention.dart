part of '../tdapi.dart';

/// Group.Objects
/// Returns users which can be mentioned in the supergroup
class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  SupergroupMembersFilterMention(
      {required this.query, required this.messageThreadId});

  /// query Query to search for
  final String query;

  /// message_thread_id If non-zero, the identifier of the current message thread
  final int messageThreadId;

  static const String CONSTRUCTOR = 'supergroupMembersFilterMention';

  static SupergroupMembersFilterMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterMention(
        query: json['query'], messageThreadId: json['message_thread_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'query': this.query,
        'message_thread_id': this.messageThreadId,
        '@type': CONSTRUCTOR
      };
}
