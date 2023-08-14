
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/config/notification/handle_notifications.dart';
import 'package:login_screen/config/notification/local_notification_management.dart';
import 'package:login_screen/config/routes/app_router.dart';


void main(){
  initializeApp();
  runApp(MyApp());
}


Future<void> initializeApp() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  ///11. for notifications
  LocalNotificationManagement.initialize();
  HandleNotifications.notificationMethods();
  HandleNotifications.handleNotification();
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,


    );
  }

}