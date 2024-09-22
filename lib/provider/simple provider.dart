import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int value;

  CounterProvider({
    this.value = 0, //default value
  });

  //for increment
  void incrementCounter(){

    //add value
    value ++;

    //to notify the app that the value has changed
    notifyListeners();
  }

  void decrementCounter(){

    //minus value
    value --;

    //to notify the app that the value has changed
    notifyListeners();
  }
}