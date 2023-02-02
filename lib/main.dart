import 'package:flutter/material.dart';
import 'package:travel_app_ui_flutter/core/theme/app_theme.dart';

import 'core/theme/app_route.dart';
import 'core/theme/app_route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel UI",
      initialRoute: AppRouteName.getStarted,
      onGenerateRoute: AppRoute.generate,
    );
  }
}

