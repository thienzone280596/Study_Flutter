import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future<void> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse('https://api.api-ninjas.com/v1/worldtime?city=london'),
      );

      if (response.statusCode == 200) {
        print('sa fonctionne: ${response.body}');
        print('Title : ${jsonDecode(response.body)['title']}');
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('An error occurred: $e');
    }
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
