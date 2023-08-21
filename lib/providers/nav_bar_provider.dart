import 'package:flutter/material.dart';

class NavBarProvider extends ChangeNotifier{
  int navBarScreenIndex;
  NavBarProvider({this.navBarScreenIndex = 0});

  void changeNavBarIndexValue(int value){
    navBarScreenIndex = value;
    notifyListeners();
  }
}