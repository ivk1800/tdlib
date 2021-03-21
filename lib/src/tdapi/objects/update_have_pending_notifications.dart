import '../tdapi.dart';

/// Describes whether there are some pending notification updates. Can be used
/// prevent application from killing, while there are some pending
class UpdateHavePendingNotifications extends Update {
  UpdateHavePendingNotifications(
      {required this.haveDelayedNotifications,
      required this.haveUnreceivedNotifications});

  /// [haveDelayedNotifications] True, if there are some delayed notification
  /// which will be sent soon
  final bool haveDelayedNotifications;

  /// [haveUnreceivedNotifications] True, if there can be some yet unreceived
  /// which are being fetched from the server
  final bool haveUnreceivedNotifications;

  static const String CONSTRUCTOR = 'updateHavePendingNotifications';

  static UpdateHavePendingNotifications? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateHavePendingNotifications(
        haveDelayedNotifications: json['have_delayed_notifications'],
        haveUnreceivedNotifications: json['have_unreceived_notifications']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'have_delayed_notifications': this.haveDelayedNotifications,
        'have_unreceived_notifications': this.haveUnreceivedNotifications,
        '@type': CONSTRUCTOR
      };
}
