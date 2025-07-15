import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(Counter_View());

class Counter_View extends StatefulWidget {
  const Counter_View({super.key});

  @override
  State<Counter_View> createState() => _Counter_ViewState();
}

class _Counter_ViewState extends State<Counter_View> {
  var count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Counter View')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Counter number:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('$count', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        decrement();
                      },
                      child: const Text('Decrement'),
                    ),

                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        increment();
                      },
                      child: const Text('Increment'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
