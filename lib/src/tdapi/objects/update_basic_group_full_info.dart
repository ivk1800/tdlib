import '../tdapi.dart';

/// Some data from basicGroupFullInfo has been changed
class UpdateBasicGroupFullInfo extends Update {
  UpdateBasicGroupFullInfo(
      {required this.basicGroupId, required this.basicGroupFullInfo});

  /// [basicGroupId] Identifier of a basic group
  final int basicGroupId;

  /// [basicGroupFullInfo] New full information about the group
  final BasicGroupFullInfo basicGroupFullInfo;

  static const String CONSTRUCTOR = 'updateBasicGroupFullInfo';

  static UpdateBasicGroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBasicGroupFullInfo(
        basicGroupId: json['basic_group_id'],
        basicGroupFullInfo:
            BasicGroupFullInfo.fromJson(json['basic_group_full_info'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'basic_group_id': this.basicGroupId,
        'basic_group_full_info': this.basicGroupFullInfo.toJson(),
        '@type': CONSTRUCTOR
      };
}
