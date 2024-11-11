import 'package:flutter/material.dart';

class MyLocale {
  Locale? locale;
  MyLocale({this.locale = const Locale("ar")});
  void setLocale(Locale locale) {
    this.locale = locale;
  }

  Locale getLocale() {
    return locale!;
  }
}
