import '../tdapi.dart';

/// Contains information about one session in a Telegram application used by
/// current user. Sessions should be shown to the user in the returned order
class Session extends TdObject {
  Session(
      {required this.id,
      required this.isCurrent,
      required this.isPasswordPending,
      required this.apiId,
      required this.applicationName,
      required this.applicationVersion,
      required this.isOfficialApplication,
      required this.deviceModel,
      required this.platform,
      required this.systemVersion,
      required this.logInDate,
      required this.lastActiveDate,
      required this.ip,
      required this.country,
      required this.region,
      this.extra});

  /// [id] Session identifier
  final int id;

  /// [isCurrent] True, if this session is the current session
  final bool isCurrent;

  /// [isPasswordPending] True, if a password is needed to complete
  /// of the session
  final bool isPasswordPending;

  /// [apiId] Telegram API identifier, as provided by the application
  final int apiId;

  /// [applicationName] Name of the application, as provided by the application
  final String applicationName;

  /// [applicationVersion] The version of the application, as provided by the
  final String applicationVersion;

  /// [isOfficialApplication] True, if the application is an official
  /// or uses the api_id of an official application
  final bool isOfficialApplication;

  /// [deviceModel] Model of the device the application has been run or is
  /// on, as provided by the application
  final String deviceModel;

  /// [platform] Operating system the application has been run or is running on,
  /// provided by the application
  final String platform;

  /// [systemVersion] Version of the operating system the application has been
  /// or is running on, as provided by the application
  final String systemVersion;

  /// [logInDate] Point in time (Unix timestamp) when the user has logged in
  final int logInDate;

  /// [lastActiveDate] Point in time (Unix timestamp) when the session was last
  final int lastActiveDate;

  /// [ip] IP address from which the session was created, in human-readable
  final String ip;

  /// [country] A two-letter country code for the country from which the session
  /// created, based on the IP address
  final String country;

  /// [region] Region code from which the session was created, based on the IP
  final String region;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'session';

  static Session? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Session(
        id: int.tryParse(json['id']) ?? 0,
        isCurrent: json['is_current'],
        isPasswordPending: json['is_password_pending'],
        apiId: json['api_id'],
        applicationName: json['application_name'],
        applicationVersion: json['application_version'],
        isOfficialApplication: json['is_official_application'],
        deviceModel: json['device_model'],
        platform: json['platform'],
        systemVersion: json['system_version'],
        logInDate: json['log_in_date'],
        lastActiveDate: json['last_active_date'],
        ip: json['ip'],
        country: json['country'],
        region: json['region'],
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'is_current': this.isCurrent,
        'is_password_pending': this.isPasswordPending,
        'api_id': this.apiId,
        'application_name': this.applicationName,
        'application_version': this.applicationVersion,
        'is_official_application': this.isOfficialApplication,
        'device_model': this.deviceModel,
        'platform': this.platform,
        'system_version': this.systemVersion,
        'log_in_date': this.logInDate,
        'last_active_date': this.lastActiveDate,
        'ip': this.ip,
        'country': this.country,
        'region': this.region,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
