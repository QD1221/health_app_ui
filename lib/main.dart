import 'package:flutter/material.dart';
import 'package:health_app_ui/ui/health_onboard_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quang Tran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HealthOnboardPage(),
    );
  }
}

