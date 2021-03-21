part of '../tdapi.dart';

/// Contains information about a related article
class PageBlockRelatedArticle extends TdObject {
  PageBlockRelatedArticle(
      {required this.url,
      required this.title,
      required this.description,
      Photo? this.photo,
      required this.author,
      required this.publishDate});

  /// [url] Related article URL
  final String url;

  /// [title] Article title; may be empty
  final String title;

  /// param_[description] Article description; may be empty
  final String description;

  /// [photo] Article photo; may be null
  final Photo? photo;

  /// [author] Article author; may be empty
  final String author;

  /// [publishDate] Point in time (Unix timestamp) when the article was
  /// 0 if unknown
  final int publishDate;

  static const String CONSTRUCTOR = 'pageBlockRelatedArticle';

  static PageBlockRelatedArticle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockRelatedArticle(
        url: json['url'],
        title: json['title'],
        description: json['description'],
        photo: Photo.fromJson(json['photo']),
        author: json['author'],
        publishDate: json['publish_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'url': this.url,
        'title': this.title,
        'description': this.description,
        'photo': this.photo,
        'author': this.author,
        'publish_date': this.publishDate,
        '@type': CONSTRUCTOR
      };
}
