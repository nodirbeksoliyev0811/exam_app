import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'service/init/init.dart';
import 'value/constants.dart';

Future<void> main() async {
  await init();
  runApp(
    EasyLocalization(
      supportedLocales: l10n,
      path: 'assets/l10n',
      child: const MyApp(),
    ),
  );
}

