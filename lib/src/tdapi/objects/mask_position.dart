import '../tdapi.dart';

/// Position on a photo where a mask should be placed
class MaskPosition extends TdObject {
  MaskPosition(
      {required this.point,
      required this.xShift,
      required this.yShift,
      required this.scale});

  /// [point] Part of the face, relative to which the mask should be placed
  final MaskPoint point;

  /// [xShift] Shift by X-axis measured in widths of the mask scaled to the face
  /// from left to right. (For example, -1.0 will place the mask just to the
  /// of the default mask position)
  final double xShift;

  /// [yShift] Shift by Y-axis measured in heights of the mask scaled to the
  /// size, from top to bottom. (For example, 1.0 will place the mask just below
  /// default mask position)
  final double yShift;

  /// [scale] Mask scaling coefficient. (For example, 2.0 means a doubled size)
  final double scale;

  static const String CONSTRUCTOR = 'maskPosition';

  static MaskPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MaskPosition(
        point: MaskPoint.fromJson(json['point'])!,
        xShift: json['x_shift'],
        yShift: json['y_shift'],
        scale: json['scale']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'point': this.point,
        'x_shift': this.xShift,
        'y_shift': this.yShift,
        'scale': this.scale,
        '@type': CONSTRUCTOR
      };
}
