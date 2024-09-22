import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/simple%20provider.dart';
import 'package:provider_tutorial/provider_2/name_change_provider.dart';

class NameChange extends StatefulWidget {
  const NameChange({Key? key}) : super(key: key);

  @override
  _NameChangeState createState() => _NameChangeState();
}

class _NameChangeState extends State<NameChange> {
  //initial the controller of the inputfield
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Change'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        color: Colors.tealAccent,
        child: Stack(
          children: [
            const Positioned(
              top: 10, // Adjust this value as needed
              left: 0,
              right: 0,
              child: Text(
                "Name Change Using Provider!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),

                    child: TextField(
                      // Set the controller to capture input
                      controller: _nameController,
                      style: TextStyle(fontSize: 30),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: 'Enter Your Name:', // Label for the input field
                        labelStyle: TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    width: double.infinity,//width similar to the width of the screen
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color
                      borderRadius: BorderRadius.circular(50), // Corner radius
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        // call the value of the "name" in the provider
                        context.watch<NameChangeProvider>().name,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),



                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      //call the function in the provider
                      context.read<NameChangeProvider>().changeNameFuntion(_nameController.text);
                    },
                    child:
                    Text("PRESS THE BUTTON TO SHOW THE INPUTTED NAME", style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20), // Adjust padding for size
                        backgroundColor: Colors.blueAccent
                    ),
                  ),

                ],
              ),
            ),
            // Bottom Navigation Bar
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.numbers),
                      color: Colors.white,
                      onPressed: () {
                        context.goNamed('home');
                      },
                    ),
                    /*
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {

                    },
                  ),
                  */
                    IconButton(
                      icon: Icon(Icons.person),
                      color: Colors.black,
                      onPressed: () {
                        //
                      },
                    ),

                    /*
                  IconButton(
                    icon: Icon(Icons.settings),
                    color: Colors.white,
                    onPressed: () {

                    },
                  ),

                   */
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}