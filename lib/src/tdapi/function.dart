part of 'tdapi.dart';

// todo: considering setExtra method or like that...
abstract class TdFunction {
  const TdFunction();
  static const CONSTRUCTOR = 'function';
  Map<String, dynamic> toJson();
  String getConstructor() => CONSTRUCTOR;
}
