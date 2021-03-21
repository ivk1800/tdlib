import '../tdapi.dart';

/// Downloading data received while the application was offline
class ConnectionStateUpdating extends ConnectionState {
  const ConnectionStateUpdating();

  static const String CONSTRUCTOR = 'connectionStateUpdating';

  static ConnectionStateUpdating? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateUpdating();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
