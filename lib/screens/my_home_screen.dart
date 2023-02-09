import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:local_notification/data/service/local_notification.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentId = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("push local notification"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  currentId++;
                  LocalNotificationService.localNotificationService
                      .showNotification(id: currentId);

                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("salom mishqilar")));
                },
                child: const Text("push notifiction")),
            ElevatedButton(
                onPressed: () {
                  currentId++;
                  LocalNotificationService.localNotificationService
                      .showNotification(id: currentId);
                },
                child: const Text("push notifiction No2")),
            ElevatedButton(
                onPressed: () {
                  currentId++;
                  LocalNotificationService.localNotificationService
                      .scheduleNotification(id: currentId, delayedTime: 5);
                },
                child: const Text("scheduled notification")),
            ElevatedButton(
                onPressed: () {
                  currentId++;
                  LocalNotificationService.localNotificationService
                      .showPeriodically(id: currentId);
                },
                child: const Text("push notifiction")),
            ElevatedButton(
                onPressed: () {
                  currentId++;
                  LocalNotificationService.localNotificationService
                      .cancelAllNotifications();
                },
                child: const Text("cancel notifictions"))
          ],
        ),
      ),
    );
  }
}
