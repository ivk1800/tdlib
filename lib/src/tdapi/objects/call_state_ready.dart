part of '../tdapi.dart';

/// Group.Objects
/// The call is ready to use
class CallStateReady extends CallState {
  CallStateReady(
      {required this.protocol,
      required this.servers,
      required this.config,
      required this.encryptionKey,
      required this.emojis,
      required this.allowP2p});

  /// protocol Call protocols supported by the peer
  final CallProtocol protocol;

  /// servers List of available call servers
  final List<CallServer> servers;

  /// config A JSON-encoded call config
  final String config;

  /// encryption_key Call encryption key
  final String encryptionKey;

  /// emojis Encryption key emojis fingerprint
  final List<String> emojis;

  /// allow_p2p True, if peer-to-peer connection is allowed by users privacy settings
  final bool allowP2p;

  static const String CONSTRUCTOR = 'callStateReady';

  static CallStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallStateReady(
        protocol: CallProtocol.fromJson(json['protocol'])!,
        servers: List<CallServer>.from((json['servers}'] ?? [])
            .map((item) => CallServer.fromJson(json['CallServer'])!)
            .toList()),
        config: json['config'],
        encryptionKey: json['encryption_key'],
        emojis: List<String>.from(
            (json['emojis}'] ?? []).map((item) => json['String']).toList()),
        allowP2p: json['allow_p2p']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'protocol': this.protocol,
        'servers': this.servers,
        'config': this.config,
        'encryption_key': this.encryptionKey,
        'emojis': this.emojis,
        'allow_p2p': this.allowP2p,
        '@type': CONSTRUCTOR
      };
}
