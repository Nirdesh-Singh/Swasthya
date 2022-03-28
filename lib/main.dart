import 'package:flutter/material.dart';
import 'package:swasthya/pages/checkbox_state.dart';
import 'package:swasthya/pages/loading.dart';
import 'package:swasthya/pages/result.dart';
import 'package:swasthya/pages/symptoms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Symptoms(),
        '/result': (context) => const Results(),
      },
    );
  }
}
