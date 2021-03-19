part of '../tdapi.dart';

/// Group.Functions
/// Returns a list of basic group and supergroup chats, which can be used as a discussion group for a channel. Returned basic group chats must be first upgraded to supergroups before they can be set as a discussion group. To set a returned supergroup as a discussion group, access to its old messages must be enabled using toggleSupergroupIsAllHistoryAvailable first
class GetSuitableDiscussionChats extends TdFunction {
  GetSuitableDiscussionChats();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getSuitableDiscussionChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
