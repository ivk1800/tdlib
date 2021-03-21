part of '../tdapi.dart';

/// Contains parameters for TDLib initialization
class TdlibParameters extends TdObject {
  TdlibParameters(
      {required this.useTestDc,
      required this.databaseDirectory,
      required this.filesDirectory,
      required this.useFileDatabase,
      required this.useChatInfoDatabase,
      required this.useMessageDatabase,
      required this.useSecretChats,
      required this.apiId,
      required this.apiHash,
      required this.systemLanguageCode,
      required this.deviceModel,
      required this.systemVersion,
      required this.applicationVersion,
      required this.enableStorageOptimizer,
      required this.ignoreFileNames});

  /// [useTestDc] If set to true, the Telegram test environment will be used
  /// of the production environment
  final bool useTestDc;

  /// [databaseDirectory] The path to the directory for the persistent database;
  /// empty, the current working directory will be used
  final String databaseDirectory;

  /// [filesDirectory] The path to the directory for storing files; if empty,
  /// will be used
  final String filesDirectory;

  /// [useFileDatabase] If set to true, information about downloaded and
  /// files will be saved between application restarts
  final bool useFileDatabase;

  /// [useChatInfoDatabase] If set to true, the library will maintain a cache of
  /// basic groups, supergroups, channels and secret chats. Implies
  final bool useChatInfoDatabase;

  /// [useMessageDatabase] If set to true, the library will maintain a cache of
  /// and messages. Implies use_chat_info_database
  final bool useMessageDatabase;

  /// [useSecretChats] If set to true, support for secret chats will be enabled
  final bool useSecretChats;

  /// [apiId] Application identifier for Telegram API access, which can be
  /// at https://my.telegram.org
  final int apiId;

  /// [apiHash] Application identifier hash for Telegram API access, which can
  /// obtained at https://my.telegram.org
  final String apiHash;

  /// [systemLanguageCode] IETF language tag of the user's operating system
  /// must be non-empty
  final String systemLanguageCode;

  /// [deviceModel] Model of the device the application is being run on; must be
  final String deviceModel;

  /// [systemVersion] Version of the operating system the application is being
  /// on. If empty, the version is automatically detected by TDLib
  final String systemVersion;

  /// [applicationVersion] Application version; must be non-empty
  final String applicationVersion;

  /// [enableStorageOptimizer] If set to true, old files will automatically be
  final bool enableStorageOptimizer;

  /// [ignoreFileNames] If set to true, original file names will be ignored.
  /// downloaded files will be saved under names as close as possible to the
  /// name
  final bool ignoreFileNames;

  static const String CONSTRUCTOR = 'tdlibParameters';

  static TdlibParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TdlibParameters(
        useTestDc: json['use_test_dc'],
        databaseDirectory: json['database_directory'],
        filesDirectory: json['files_directory'],
        useFileDatabase: json['use_file_database'],
        useChatInfoDatabase: json['use_chat_info_database'],
        useMessageDatabase: json['use_message_database'],
        useSecretChats: json['use_secret_chats'],
        apiId: json['api_id'],
        apiHash: json['api_hash'],
        systemLanguageCode: json['system_language_code'],
        deviceModel: json['device_model'],
        systemVersion: json['system_version'],
        applicationVersion: json['application_version'],
        enableStorageOptimizer: json['enable_storage_optimizer'],
        ignoreFileNames: json['ignore_file_names']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'use_test_dc': this.useTestDc,
        'database_directory': this.databaseDirectory,
        'files_directory': this.filesDirectory,
        'use_file_database': this.useFileDatabase,
        'use_chat_info_database': this.useChatInfoDatabase,
        'use_message_database': this.useMessageDatabase,
        'use_secret_chats': this.useSecretChats,
        'api_id': this.apiId,
        'api_hash': this.apiHash,
        'system_language_code': this.systemLanguageCode,
        'device_model': this.deviceModel,
        'system_version': this.systemVersion,
        'application_version': this.applicationVersion,
        'enable_storage_optimizer': this.enableStorageOptimizer,
        'ignore_file_names': this.ignoreFileNames,
        '@type': CONSTRUCTOR
      };
}
