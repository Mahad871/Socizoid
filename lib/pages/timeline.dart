import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:socizoid/widgets/progress.dart';
import 'constants.dart';

var _usersref = FirebaseFirestore.instance.collection('users');
String User = "hahaha";

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

void getUsers() async {
  // final QuerySnapshot snapshot = await _usersref.get();
  // snapshot.docs.forEach((user) {
  //   print(user['username']);
  // });
  print(User);
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: SocioidAppBar(isTimeline: true),
      body: Center(
          child: IconButton(
              onPressed: () => getUsers(), icon: Icon(Icons.dangerous))),
    );
  }
}
