part of '../tdapi.dart';

/// Group.Functions
/// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
class CreateNewBasicGroupChat extends TdFunction {
  CreateNewBasicGroupChat({required this.userIds, required this.title});

  /// user_ids Identifiers of users to be added to the basic group
  final List<int> userIds;

  /// title Title of the new basic group; 1-128 characters
  final String title;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'createNewBasicGroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_ids': this.userIds,
        'title': this.title,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
