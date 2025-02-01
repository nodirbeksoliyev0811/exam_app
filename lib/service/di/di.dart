import 'package:exam_app/service/storage/secure_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  locator.registerSingleton<ScrollController>(ScrollController());
  locator.registerSingleton<SecureStorage>(SecureStorage());
}
