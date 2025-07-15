import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              label: Text(
                'Edit Location',
                style: TextStyle(color: Colors.grey),
              ),
              icon: const Icon(Icons.edit_location),
            ),
          ],
        ),
      ),
    );
  }
}
