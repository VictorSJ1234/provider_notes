import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/simple%20provider.dart';

class HomepageUi extends StatefulWidget {
  const HomepageUi({Key? key}) : super(key: key);

  @override
  _HomepageUiState createState() => _HomepageUiState();
}

class _HomepageUiState extends State<HomepageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
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
                "Provider State Management!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.watch<CounterProvider>().value.toString(),
                    style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20), // Space between the counter and buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterProvider>().decrementCounter();
                        },
                        child: const Icon(Icons.remove),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), // Make the button circular
                          padding: EdgeInsets.all(20), // Adjust padding for size
                            backgroundColor: Colors.redAccent
                        ),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CounterProvider>().incrementCounter();
                        },
                        child: const Icon(Icons.add, color: Colors.white,),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), // Make the button circular
                          padding: EdgeInsets.all(20), // Adjust padding for size
                          backgroundColor: Colors.blueAccent
                        ),
                      ),
                    ],
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
                      color: Colors.black,
                      onPressed: () {
                        // already in home
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
                      color: Colors.white,
                      onPressed: () {
                        context.pushNamed('name_change');
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