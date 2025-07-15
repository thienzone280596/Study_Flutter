import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    String userName = await Future.delayed(const Duration(seconds: 3), () {
      return 'Data fetched';
    });
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'More data fetched';
    });

    print(userName + ' ' + bio);
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text('Choose Location')),
      body: Text('Choose Location Page'),
    );
  }
}
