// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> setupNotifications() async {
  // Get current user
  final user = FirebaseAuth.instance.currentUser;
  if (user == null) {
    print('Cannot setup notifications: No user is signed in');
    return;
  }

  try {
    // Request permission
    final settings = await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    print('Notification authorization status: ${settings.authorizationStatus}');

    // Even if not authorized, we try to get token (might be silent notifications)
    String? fcmToken;

    // Try up to 3 times to get token
    for (int i = 0; i < 3; i++) {
      fcmToken = await FirebaseMessaging.instance.getToken();
      if (fcmToken != null && fcmToken.isNotEmpty) break;
      await Future.delayed(Duration(seconds: 2));
    }

    if (fcmToken == null || fcmToken.isEmpty) {
      print('Failed to get FCM token after multiple attempts');
      return;
    }

    print(
        'FCM Token obtained: ${fcmToken.substring(0, 5)}...'); // Show just a prefix for logging

    // Save token to user document - make sure collection name matches your Firestore
    await FirebaseFirestore.instance
        .collection('Users') // Make sure this matches your collection name!
        .doc(user.uid)
        .update({
      'fcmToken': fcmToken,
      'fcmTokenLastUpdated': FieldValue.serverTimestamp(),
    });

    // Set up token refresh listener
    FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
      print('FCM Token refreshed');
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(user.uid)
          .update({
        'fcmToken': newToken,
        'fcmTokenLastUpdated': FieldValue.serverTimestamp(),
      });
    });

    // Configure how to handle messages when app is in foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');

      if (message.notification != null) {
        print(
            'Message also contained a notification: ${message.notification!.title}');
      }
    });

    print('Notification setup completed successfully');
  } catch (e) {
    print('Error setting up notifications: $e');
  }
}
