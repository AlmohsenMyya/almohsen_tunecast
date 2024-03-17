import '../../../core/app_export.dart';import '../models/notification_settings_model.dart';/// A controller class for the NotificationSettingsScreen.
///
/// This class manages the state of the NotificationSettingsScreen, including the
/// current notificationSettingsModelObj
class NotificationSettingsController extends GetxController {Rx<NotificationSettingsModel> notificationSettingsModelObj = NotificationSettingsModel().obs;

 }
