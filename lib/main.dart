import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_module.dart';
import 'package:flutter_application_1/app/app_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  prepareApp();
}

// ignore: missing_return
Future prepareApp() {
  runApp(ModularApp(
    module: AppModule(),
    child: AppWidget(),
  ));
}
