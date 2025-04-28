// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter_native_screenshot/flutter_native_screenshot.dart';

Future<bool> makeAndShareScreenshot(BuildContext context) async {
  try {
    // 1. Take the screenshot using flutter_native_screenshot
    final String? screenshotPath =
        await FlutterNativeScreenshot.takeScreenshot();

    if (screenshotPath == null || screenshotPath.isEmpty) {
      print("Error: screenshot path is null or empty");
      return false;
    }

    // 2. Share the screenshot
    await Share.shareXFiles([XFile(screenshotPath)],
        text: 'Quote from Moonlight');

    return true;
  } catch (e) {
    print("Error sharing screenshot: $e");
    return false;
  }
}
