part of '../tdapi.dart';

/// Group.Objects
/// A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice
class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeBuy();

  static const String CONSTRUCTOR = 'inlineKeyboardButtonTypeBuy';

  static InlineKeyboardButtonTypeBuy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InlineKeyboardButtonTypeBuy();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
