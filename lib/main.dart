import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_Page.dart';
import 'package:flutter_catalog/pages/loginPAge.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      initialRoute: MyRoutes.HomeRoute,
      theme: myTheme.lightTheme(context),
      darkTheme: myTheme.DarkTheme(context),
      routes: {
        "/": (context) => loginPage(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginPage(),
      },
    );
  }
}
