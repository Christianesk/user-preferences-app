


import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {


  final genderKey='gender';
  final secondaryColorKey = 'secondaryColor';
  final nameKey = 'name';
  final lastPageKey = 'lastPage';


  static final UserPreferences _instance = new UserPreferences._internal();

  factory UserPreferences(){
    return _instance;
  }

  UserPreferences._internal();

  SharedPreferences _prefs;

  initPrefs()async{
    this._prefs = await SharedPreferences.getInstance();
  }



  get gender{
    return _prefs.getInt(genderKey) ?? 1;
  }


  set gender(int value){
    _prefs.setInt(genderKey, value);
  }

  get secondaryColor{
    return _prefs.getBool(secondaryColorKey) ?? false;
  }


  set secondaryColor(bool value){
    _prefs.setBool(secondaryColorKey, value);
  }

  get name{
    return _prefs.getString(nameKey) ?? '';
  }


  set name(String value){
    _prefs.setString(nameKey, value);
  }


  get lastPage{
    return _prefs.getString(lastPageKey) ?? 'home';
  }


  set lastPage(String value){
    _prefs.setString(lastPageKey, value);
  }


}