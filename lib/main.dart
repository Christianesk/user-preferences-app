import 'package:flutter/material.dart';
import 'package:user_preferences_app/src/routes/routes.dart';
import 'package:user_preferences_app/src/shared_preferences/user_preferences.dart';
 
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new UserPreferences();
  await prefs.initPrefs();
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {

  final prefs = new UserPreferences();

  @override
  Widget build(BuildContext context) {

    // final colorTheme = Colors.tealAccent;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferences',
      initialRoute: prefs.lastPage,
      routes: getApplicationRoutes(),
      // theme: ThemeData(
      //     primaryColor: colorTheme,
      // ),
    );
  }
}