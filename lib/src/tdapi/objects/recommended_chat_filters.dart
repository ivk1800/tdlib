part of '../tdapi.dart';

/// Group.Objects
/// Contains a list of recommended chat filters
class RecommendedChatFilters extends TdObject {
  RecommendedChatFilters({required this.chatFilters});

  /// chat_filters List of recommended chat filters
  final List<RecommendedChatFilter> chatFilters;

  static const String CONSTRUCTOR = 'recommendedChatFilters';

  static RecommendedChatFilters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFilters(
        chatFilters: List<RecommendedChatFilter>.from((json['chat_filters}'] ??
                [])
            .map((item) =>
                RecommendedChatFilter.fromJson(json['RecommendedChatFilter'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_filters': this.chatFilters, '@type': CONSTRUCTOR};
}
