import 'package:flutter/material.dart';
import 'package:user_preferences_app/src/pages/home_page.dart';
import 'package:user_preferences_app/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final colorTheme = Colors.tealAccent;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferences',
      initialRoute: HomePage.routeName,
      routes: getApplicationRoutes(),
      theme: ThemeData(
          primaryColor: colorTheme,
      ),
    );
  }
}