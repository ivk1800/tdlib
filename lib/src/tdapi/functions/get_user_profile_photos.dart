part of '../tdapi.dart';

/// Group.Functions
/// Returns the profile photos of a user. The result of this query may be outdated: some photos might have been deleted already
class GetUserProfilePhotos extends TdFunction {
  GetUserProfilePhotos(
      {required this.userId, required this.offset, required this.limit});

  /// user_id User identifier
  final int userId;

  /// offset The number of photos to skip; must be non-negative
  final int offset;

  /// limit The maximum number of photos to be returned; up to 100
  final int limit;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getUserProfilePhotos';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'offset': this.offset,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
