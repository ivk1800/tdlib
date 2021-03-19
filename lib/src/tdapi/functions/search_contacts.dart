part of '../tdapi.dart';

/// Group.Functions
/// Searches for the specified query in the first names, last names and usernames of the known user contacts
class SearchContacts extends TdFunction {
  SearchContacts({required this.query, required this.limit});

  /// query Query to search for; may be empty to return all contacts
  final String query;

  /// limit The maximum number of users to be returned
  final int limit;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'query': this.query,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
