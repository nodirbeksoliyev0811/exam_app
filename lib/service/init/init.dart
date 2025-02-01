import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import '../di/di.dart';
import '../storage/secure_storage.dart';

init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SecureStorage.initSharedPref();
  await EasyLocalization.ensureInitialized();
  await setup();
}
