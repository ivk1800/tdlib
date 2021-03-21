part of '../tdapi.dart';

/// Group.Objects
/// Information about a bank card
class BankCardInfo extends TdObject {
  BankCardInfo({required this.title, required this.actions});

  /// title Title of the bank card description
  final String title;

  /// actions Actions that can be done with the bank card number
  final List<BankCardActionOpenUrl> actions;

  static const String CONSTRUCTOR = 'bankCardInfo';

  static BankCardInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BankCardInfo(
        title: json['title'],
        actions: List<BankCardActionOpenUrl>.from((json['actions}'] ?? [])
            .map((item) => BankCardActionOpenUrl.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'title': this.title, 'actions': this.actions, '@type': CONSTRUCTOR};
}
