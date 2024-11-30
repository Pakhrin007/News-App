import 'package:flutter/material.dart';
import 'package:news/notificationservice.dart';

class Nited extends StatefulWidget {
  const Nited({super.key});

  @override
  State<Nited> createState() => _NitedState();
}

class _NitedState extends State<Nited> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            children: [],
          ),
          ElevatedButton.icon(
            onPressed: () {
              Future.delayed(Duration(seconds: 20)).then((s) {
                NotificationService().showNotification(
                  id: 1,
                  body: "Welcome",
                  payload: "now",
                  title: "New Notificatio",
                );
              });
            },
            label: Text("Show Notification"),
            icon: Icon(Icons.notifications),
          )
        ],
      ),
    );
  }
}
