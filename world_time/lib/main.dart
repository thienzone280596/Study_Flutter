import 'package:flutter/material.dart';
import 'package:world_time/Pages/choose_location.dart';
import 'package:world_time/Pages/home.dart';
import 'package:world_time/Pages/loading.dart';

void main() => runApp(
  MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.blue),
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/loading': (context) => const Loading(),
      '/location': (context) => const ChooseLocation(),
    },
  ),
);
