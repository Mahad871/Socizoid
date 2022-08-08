import 'package:flutter/material.dart';
import 'package:socizoid/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socizoid',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.pinkAccent),
        useMaterial3: false,
      ),
      home: Home(),
    );
  }
}
