part of '../tdapi.dart';

/// Group.Functions
/// Returns information about members or banned users in a supergroup or channel. Can be used only if SupergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters
class GetSupergroupMembers extends TdFunction {
  GetSupergroupMembers(
      {required this.supergroupId,
      required this.filter,
      required this.offset,
      required this.limit});

  /// supergroup_id Identifier of the supergroup or channel
  final int supergroupId;

  /// filter The type of users to return. By default, supergroupMembersFilterRecent
  final SupergroupMembersFilter filter;

  /// offset Number of users to skip
  final int offset;

  /// limit The maximum number of users be returned; up to 200
  final int limit;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getSupergroupMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'filter': this.filter,
        'offset': this.offset,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
