import 'package:flutter/material.dart';
import 'package:link/presentation/notifications/models/notification_model.dart';
import 'package:link/presentation/notifications/widgets/notification_tile.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      NotificationModel(
        title: 'Printer out of paper',
        location: 'Kiosk1',
        timeAgo: '3 sec',
        hasFixAction: true,
        hasShareAction: true,
      ),
      NotificationModel(
        title: 'Printer paper low',
        location: 'Kiosk3',
        timeAgo: '7 min',
      ),
      NotificationModel(
        title: 'Weak network connection',
        location: 'Kiosk1',
        timeAgo: 'yesterday',
      ),
      NotificationModel(
        title: 'ILS Non Responsive',
        location: 'Kiosk3',
        timeAgo: '6 days',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return NotificationTile(notification: notification);
        },
      ),
    );
  }
} 