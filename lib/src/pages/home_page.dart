import 'package:flutter/material.dart';
import 'package:user_preferences_app/src/pages/settings_page.dart';
import 'package:user_preferences_app/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';
  

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(

      appBar: AppBar(
        title: Text('User Preferences'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Secundary Color'),
          Divider(),
          Text('Gender'),
          Divider(),
          Text('User Name'),
          Divider()
        ],
      ),
      
    );
  }
}