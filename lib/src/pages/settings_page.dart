import 'package:flutter/material.dart';
import 'package:user_preferences_app/src/shared_preferences/user_preferences.dart';
import 'package:user_preferences_app/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _secondaryColor;
  int _gender;
  String _name;

  TextEditingController _textEditingController;

  final prefs = new UserPreferences();

  @override
  void initState() {
    super.initState();
    prefs.lastPage = SettingsPage.routeName;
    _gender = prefs.gender;
    _secondaryColor = prefs.secondaryColor;
    _textEditingController = new TextEditingController(text: prefs.name);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: (prefs.secondaryColor) ? Colors.blue : Colors.tealAccent,
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            value: _secondaryColor,
            title: Text('Secondary Color'),
            onChanged: (value) {
              setState(() {
                _secondaryColor = value;
                prefs.secondaryColor = value;
              });
            },
          ),
          RadioListTile(
            value: 1,
            title: Text('Male'),
            groupValue: _gender,
            onChanged: _setSelectedRadio,
          ),
          RadioListTile(
            value: 2,
            title: Text('Female'),
            groupValue: _gender,
            onChanged: _setSelectedRadio,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Name',
                helperText: 'You name',
              ),
              onChanged: (value) {
                prefs.name = value;
              },
            ),
          )
        ],
      )
      
    );
  }

  _setSelectedRadio(int value) {

    prefs.gender = value;

    _gender = value;

    setState(() {});
  }

}