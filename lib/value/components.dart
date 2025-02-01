import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

appSystemSettings() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
}

String formatTime(int seconds) {
  int minutes = seconds ~/ 60;
  int sec = seconds % 60;
  return '$minutes:${sec.toString().padLeft(2, '0')}';
}

void clearAndNavigate(BuildContext context, String path) {
  while (GoRouter.of(context).canPop()) {
    GoRouter.of(context).pop();
  }
  GoRouter.of(context).pushReplacement(path);
}
