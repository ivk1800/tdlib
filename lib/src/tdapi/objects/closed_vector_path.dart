part of '../tdapi.dart';

/// Group.Objects
/// Represents a closed vector path. The path begins at the end point of the last command
class ClosedVectorPath extends TdObject {
  ClosedVectorPath({required this.commands});

  /// commands List of vector path commands
  final List<VectorPathCommand> commands;

  static const String CONSTRUCTOR = 'closedVectorPath';

  static ClosedVectorPath? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ClosedVectorPath(
        commands: List<VectorPathCommand>.from((json['commands}'] ?? [])
            .map((item) =>
                VectorPathCommand.fromJson(json['VectorPathCommand'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'commands': this.commands, '@type': CONSTRUCTOR};
}
