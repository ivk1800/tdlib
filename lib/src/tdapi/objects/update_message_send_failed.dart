part of '../tdapi.dart';

/// A message failed to send. Be aware that some messages being sent can be
/// deleted, in which case updateDeleteMessages will be received instead of
/// update
class UpdateMessageSendFailed extends Update {
  UpdateMessageSendFailed(
      {required this.message,
      required this.oldMessageId,
      required this.errorCode,
      required this.errorMessage});

  /// [message] Contains information about the message which failed to send
  final Message message;

  /// [oldMessageId] The previous temporary message identifier
  final int oldMessageId;

  /// [errorCode] An error code
  final int errorCode;

  /// [errorMessage] Error message
  final String errorMessage;

  static const String CONSTRUCTOR = 'updateMessageSendFailed';

  static UpdateMessageSendFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageSendFailed(
        message: Message.fromJson(json['message'])!,
        oldMessageId: json['old_message_id'],
        errorCode: json['error_code'],
        errorMessage: json['error_message']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'message': this.message,
        'old_message_id': this.oldMessageId,
        'error_code': this.errorCode,
        'error_message': this.errorMessage,
        '@type': CONSTRUCTOR
      };
}
