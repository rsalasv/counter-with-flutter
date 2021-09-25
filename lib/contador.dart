import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Contador with ChangeNotifier{
  int _count = 0;
  int get count => _count;
  
  Color _color = Colors.black;
  Color get color => _color;

  void restartCounter(){
    _count = 0;
    notifyListeners();
  }

  void changeColor(new_color){
    _color = new_color;
    notifyListeners();
  }

  void increment(){
    _count++;
    notifyListeners();
  }

  void decrement(){
    _count--;
    notifyListeners();
  }
}