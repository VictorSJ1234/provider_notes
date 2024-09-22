import 'package:flutter/cupertino.dart';

class NameChangeProvider extends ChangeNotifier {

  //initializing the name, which will be shown in the ui
  String name;

  // Constructor with default name value
  //this will be called by the ui
  NameChangeProvider({
    //initial value of the "name"
    this.name = "ENTERED NAME",
  });

  // Method to change the name
  void changeNameFuntion(String newName) {

    //changing the value of the "name" to the "newName"
    name = newName;

    //forda update
    notifyListeners();
  }
}
