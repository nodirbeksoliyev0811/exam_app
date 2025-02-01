import 'package:exam_app/feature/global/screen/not_found/not_found_screen.dart';
import 'package:exam_app/feature/global/test/screen/finished_screen.dart';
import 'package:exam_app/feature/global/test/screen/test_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

GoRouter? globalGoRouter;

GoRouter getGoRouter() {
  return globalGoRouter ??= router;
}

BuildContext getContext()=> navigatorKey.currentState!.context;

GoRouter router = GoRouter(
  initialLocation: "/",
  navigatorKey: navigatorKey,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(path: "/", builder: (context, state) => const TestScreen()),
    GoRoute(path: "/finished_screen", builder: (context, state) => const FinishedScreen()),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);
