import 'package:flutter/material.dart';

class PanelNotifier with ChangeNotifier {
  bool _hide = false;

  bool get hide => _hide;

  void setHide(bool value) {
    _hide = value;
    notifyListeners();
  }
}
