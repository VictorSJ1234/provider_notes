import 'package:flutter/material.dart';
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
                      FloatingActionButton(
                        onPressed: () {
                          // read the counter to change the value of the number
                          context.read<CounterProvider>().incrementCounter();
                        },
                        child: const Icon(Icons.add),
                      ),
                      const SizedBox(width: 20), // Space between buttons
                      FloatingActionButton(
                        onPressed: () {
                          // read the counter to change the value of the number
                          context.read<CounterProvider>().decrementCounter();
                        },
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}