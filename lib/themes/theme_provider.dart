import 'package:flutter/material.dart';
import 'package:glance/themes/dark_mode.dart';
import 'package:glance/themes/light_mode.dart';
import 'package:glance/themes/theme_provider.dart';

// change the theme ussing setting

class ThemeProvider with ChangeNotifier {
  // intial is light

  ThemeData _themeData = lightmode;

  // get the current theme
  ThemeData get themeData => _themeData;

  // check the theme..
  bool get isdarkmode => _themeData == darkMode;

  // set the theme
  set themedata(ThemeData themedata) {
    _themeData = themedata;

    // update UI
    notifyListeners();
  }

  // toggle between dark and light mode
  void toggletheme() {
    if (_themeData == lightmode) {
      themedata = darkMode;
    } else {
      themedata = lightmode;
    }
  }
}
