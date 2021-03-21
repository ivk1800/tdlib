import '../tdapi.dart';

/// Describes an instant view page for a web page
class WebPageInstantView extends TdObject {
  WebPageInstantView(
      {required this.pageBlocks,
      required this.viewCount,
      required this.version,
      required this.isRtl,
      required this.isFull});

  /// [pageBlocks] Content of the web page
  final List<PageBlock> pageBlocks;

  /// [viewCount] Number of the instant view views; 0 if unknown
  final int viewCount;

  /// [version] Version of the instant view, currently can be 1 or 2
  final int version;

  /// [isRtl] True, if the instant view must be shown from right to left
  final bool isRtl;

  /// [isFull] True, if the instant view contains the full page. A network
  /// might be needed to get the full web page instant view
  final bool isFull;

  static const String CONSTRUCTOR = 'webPageInstantView';

  static WebPageInstantView? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebPageInstantView(
        pageBlocks: List<PageBlock>.from((json['page_blocks}'] ?? [])
            .map((item) => PageBlock.fromJson(item))
            .toList()),
        viewCount: json['view_count'],
        version: json['version'],
        isRtl: json['is_rtl'],
        isFull: json['is_full']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'page_blocks': this.pageBlocks,
        'view_count': this.viewCount,
        'version': this.version,
        'is_rtl': this.isRtl,
        'is_full': this.isFull,
        '@type': CONSTRUCTOR
      };
}
