import 'package:tdlib/src/string_extensions.dart';

class VariableType {
  final String type;
  final bool isDartType;
  final bool isListType;
  final String rawType;

  VariableType._(
      {required this.type,
      required this.isDartType,
      required this.rawType,
      required this.isListType});

  factory VariableType.fromRawType({required String rawType}) {
    var type = getType(rawType);
    return VariableType._(
        type: type == 'Error' ? 'TdError': type,
        isDartType: dartTypes.contains(type),
        isListType: type.startsWith('List<'),
        rawType: rawType);
  }

  static const builtInTypes = [
    'int',
    'int32',
    'int53',
    'int64',
    'long',
    'double',
    'string',
    'bytes',
    'Bool'
  ];
  static const dartTypes = ['int', 'double', 'String', 'bool'];

  static String getType(String type, {String prefix = 'TYPE'}) {
    String dartType;

    if (builtInTypes.contains(type)) {
      dartType = getBuiltInDartType(type);
    } else if (type.startsWith('vector')) {
      final subType = type.substring(7, type.length - 1);
      dartType = getType(subType, prefix: 'List<TYPE>');
    } else {
      type = type.upperFirstChar();
      //if (_objects.any((TlObject obj) => obj.isParent && obj.name == type))
      //  dartType = 'TdObject';
      //else
      //  dartType = type;
      dartType = type;
    }
    return prefix.replaceAll('TYPE', dartType);
  }

  static String getBuiltInDartType(String type) {
    switch (type) {
      case 'int':
      case 'int32':
      case 'int53':
      case 'int64':
      case 'long':
        return 'int';
      case 'double':
        return 'double';
      case 'string':
      case 'bytes':
        return 'String';
      case 'Bool':
        return 'bool';
      default:
        return '';
    }
  }

  @override
  String toString() {
    return type;
  }
}

extension VariableTypeExtension on VariableType {
  static const dartTypes = ['int', 'double', 'String', 'bool'];

// String isDartType() {
//   return "${this[0].toLowerCase()}${this.substring(1)}";
// }
}
