import '../tdapi.dart';

/// Removes potentially dangerous characters from the name of a file. The
/// of the file name is supposed to be UTF-8. Returns an empty string on
/// Can be called synchronously
/// Returns [Text]
class CleanFileName extends TdFunction {
  CleanFileName({required this.fileName, this.extra});

  /// [fileName] File name or path to the file
  final String fileName;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'cleanFileName';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_name': this.fileName, '@type': CONSTRUCTOR, '@extra': this.extra};
}
