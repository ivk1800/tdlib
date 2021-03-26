import '../tdapi.dart';

/// The footer of a page
class PageBlockFooter extends PageBlock {
  PageBlockFooter({required this.footer});

  /// [footer] Footer
  final RichText footer;

  static const String CONSTRUCTOR = 'pageBlockFooter';

  static PageBlockFooter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockFooter(footer: RichText.fromJson(json['footer'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'footer': this.footer.toJson(), '@type': CONSTRUCTOR};
}
