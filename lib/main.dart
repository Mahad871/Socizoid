import 'package:flutter/material.dart';
import 'package:socizoid/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/RegistrationScreen.dart';

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
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.amber.shade600,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
        scaffoldBackgroundColor: Colors.grey.shade900,
        useMaterial3: false,
      ),
      home: Home(),
    );
  }
}
