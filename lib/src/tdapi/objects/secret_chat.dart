part of '../tdapi.dart';

/// Represents a secret chat
class SecretChat extends TdObject {
  SecretChat(
      {required this.id,
      required this.userId,
      required this.state,
      required this.isOutbound,
      required this.ttl,
      required this.keyHash,
      required this.layer});

  /// [id] Secret chat identifier
  final int id;

  /// [userId] Identifier of the chat partner
  final int userId;

  /// [state] State of the secret chat
  final SecretChatState state;

  /// [isOutbound] True, if the chat was created by the current user; otherwise false
  final bool isOutbound;

  /// [ttl] Current message Time To Live setting (self-destruct timer) for the chat, in seconds
  final int ttl;

  /// [keyHash] Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9.. The pixels must be used to make a 12x12 square image filled from left to right, top to bottom. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers
  final String keyHash;

  /// [layer] Secret chat layer; determines features supported by the chat partner's application. Video notes are supported if the layer
  final int layer;

  static const String CONSTRUCTOR = 'secretChat';

  static SecretChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SecretChat(
        id: json['id'],
        userId: json['user_id'],
        state: SecretChatState.fromJson(json['state'])!,
        isOutbound: json['is_outbound'],
        ttl: json['ttl'],
        keyHash: json['key_hash'],
        layer: json['layer']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'user_id': this.userId,
        'state': this.state,
        'is_outbound': this.isOutbound,
        'ttl': this.ttl,
        'key_hash': this.keyHash,
        'layer': this.layer,
        '@type': CONSTRUCTOR
      };
}
