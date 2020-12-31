import 'package:flutter/material.dart';
import 'package:user_preferences_app/src/shared_preferences/user_preferences.dart';
import 'package:user_preferences_app/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new UserPreferences();

  @override
  Widget build(BuildContext context) {

    prefs.lastPage = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('User Preferences'),
        backgroundColor: (prefs.secondaryColor) ? Colors.blue : Colors.tealAccent,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Secundary Color: ${prefs.secondaryColor}'),
          Divider(),
          Text('Gender: ${prefs.gender}'),
          Divider(),
          Text('User Name: ${prefs.name}'),
          Divider()
        ],
      ),
    );
  }
}
