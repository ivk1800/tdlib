part of '../tdapi.dart';

/// Group.Objects
/// A slideshow
class PageBlockSlideshow extends PageBlock {
  PageBlockSlideshow({required this.pageBlocks, required this.caption});

  /// page_blocks Slideshow item contents
  final List<PageBlock> pageBlocks;

  /// caption Block caption
  final PageBlockCaption caption;

  static const String CONSTRUCTOR = 'pageBlockSlideshow';

  static PageBlockSlideshow? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockSlideshow(
        pageBlocks: List<PageBlock>.from((json['page_blocks}'] ?? [])
            .map((item) => PageBlock.fromJson(item))
            .toList()),
        caption: PageBlockCaption.fromJson(json['caption'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'page_blocks': this.pageBlocks,
        'caption': this.caption,
        '@type': CONSTRUCTOR
      };
}
