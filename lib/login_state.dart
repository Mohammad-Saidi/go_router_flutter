

import 'constants.dart';
import 'package:go_router_flutter/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';

class LoginState extends ChangeNotifier {

  final SharedPreferences prefs;
  bool _loggedIn = false;

  bool get loggedIn => _loggedIn;

  set loggedIn(bool value) {
    _loggedIn = value;
    prefs.setBool(loggedInKey, value);
    notifyListeners();
  }

  void checkLoggedIn() {
    loggedIn = prefs.getBool(loggedInKey) ?? false;
  }



  LoginState(this.prefs) {
    //loggedIn = prefs.getBool(loggedInKey) ?? false;
  }


}