import 'package:flutter/material.dart';

class ThemeWidget {
  bool themeLightMode;

  ThemeWidget(this.themeLightMode);

  void setThemeMode(bool isLight) {
    this.themeLightMode = isLight;
  }

  bool getThemeMode() {
    return this.themeLightMode;
  }

  Color mainThemeColor() {
    return this.themeLightMode ? Color(0xffffe1e1e1) : Color(0xffff363f58);
  }

  Icon iconTheme() {
    return this.themeLightMode
        ? Icon(Icons.wb_sunny)
        : Icon(Icons.brightness_2);
  }
}
