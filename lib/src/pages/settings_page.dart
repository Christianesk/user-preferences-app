import 'package:flutter/material.dart';
import 'package:user_preferences_app/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            value: true,
            title: Text('Secondary Color'),
            onChanged: (value) {
              
            },
          ),
          RadioListTile(
            value: 1,
            title: Text('Male'),
            groupValue: 1,
            onChanged: (value) {
              
            },
          ),
          RadioListTile(
            value: 2,
            title: Text('Female'),
            groupValue: 1,
            onChanged: (value) {
              
            },
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                helperText: 'You name'
              ),
              onChanged: (value) {
                
              },
            ),
          )
        ],
      )
      
    );
  }
}