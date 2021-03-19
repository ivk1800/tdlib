part of '../tdapi.dart';

/// Group.Functions
/// Adds a user to the contact list or edits an existing contact by their user identifier
class AddContact extends TdFunction {
  AddContact({required this.contact, required this.sharePhoneNumber});

  /// contact The contact to add or edit; phone number can be empty and needs to be specified only if known, vCard is ignored
  final Contact contact;

  /// share_phone_number True, if the new contact needs to be allowed to see current user's phone number. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed. Use the field UserFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number
  final bool sharePhoneNumber;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'addContact';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'contact': this.contact,
        'share_phone_number': this.sharePhoneNumber,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
