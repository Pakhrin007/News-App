import 'package:flutter/material.dart';
import 'package:news/homepage.dart';
import 'package:news/notificationservice.dart';
import 'package:news/ui/List.dart';
// import 'package:news/ui/expansionpannelist.dart';
import 'package:news/ui/homescreen.dart';
import 'package:news/ui/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final NotificationService notificationService = NotificationService();
  await notificationService.initNotification();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Local Notification',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 18,
              color: Colors.white,
            )),
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.deepPurple.shade200,
        useMaterial3: true,
      ),
      home: Nited(),
    );
  }
}
