import '../tdapi.dart';

/// Represents a closed vector path. The path begins at the end point of the
/// command
class ClosedVectorPath extends TdObject {
  ClosedVectorPath({required this.commands});

  /// [commands] List of vector path commands
  final List<VectorPathCommand> commands;

  static const String CONSTRUCTOR = 'closedVectorPath';

  static ClosedVectorPath? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ClosedVectorPath(
        commands: List<VectorPathCommand>.from((json['commands'] ?? [])
            .map((item) => VectorPathCommand.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'commands': commands.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
