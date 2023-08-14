import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationManagement{

  /// 5.b.a
  static final FlutterLocalNotificationsPlugin _notificationsPlugin=FlutterLocalNotificationsPlugin();

  static NotificationDetails notificationDetails=const NotificationDetails();

  /// 5/ Requesting permission
  static void initialize(){
    requestPermission();
    initializePlatform();


  }

  /// 5.b
   static Future<void> requestAndroidPermission () async{

    /// Get the device sdk version
    var androidInfo=await DeviceInfoPlugin().androidInfo;
    int? sdkInt=androidInfo.version.sdkInt;


    if(sdkInt>=33){
      _notificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
    }

    }



  /// 5.a
  static void requestIosPermission() {

  }

  static void requestPermission() {
    if(Platform.isAndroid){
      requestAndroidPermission();
    }
    else if(Platform.isIOS){

      requestIosPermission();

    }
  }

  ///6
 static void initializePlatform() {
    /// 6.a Initialing Android and ios setting
    InitializationSettings initializationSettings=const InitializationSettings(
      // 6.a.a.  Give the name of icon in android
      android: AndroidInitializationSettings("drawable/logo"),
     // iOS: initializationSettingIOS,


    );
    /// IOS initilization
    ///
    /// iv
    _notificationsPlugin.initialize(initializationSettings);

    /// 7. Add notification Details
      getNotificationDetails(null);


  }

  static Future<NotificationDetails> getNotificationDetails(RemoteMessage? message ) async {
    notificationDetails=NotificationDetails(
      android: await androidNotificationDetails(message)
    );
    return notificationDetails;

  }
  /// 7.b TODO

  static androidNotificationDetails(RemoteMessage? message) {}


}



