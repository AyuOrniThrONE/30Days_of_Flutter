import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_Page.dart';
import 'package:flutter_catalog/pages/loginPAge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => loginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => loginPage(),
      },
    );
  }
}
