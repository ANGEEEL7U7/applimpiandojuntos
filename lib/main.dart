import 'package:flutter/material.dart';
import 'package:ljy/screens/login.dart';
import 'package:ljy/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
     home: const Login(),
     theme: AppTheme.DarkTheme
    );
  }
}

