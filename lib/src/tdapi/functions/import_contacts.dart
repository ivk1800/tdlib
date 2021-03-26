import '../tdapi.dart';

/// Adds new contacts or edits existing contacts by their phone numbers;
/// user identifiers are ignored
/// Returns [ImportedContacts]
class ImportContacts extends TdFunction {
  ImportContacts({required this.contacts});

  /// [contacts] The list of contacts to import or edit; contacts' vCard are
  /// and are not imported
  final List<Contact> contacts;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'importContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'contacts': contacts.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
