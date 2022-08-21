import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:socizoid/pages/constants.dart';
import 'package:socizoid/widgets/progress.dart';

var _usersref = FirebaseFirestore.instance.collection('users');

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<dynamic> listUsers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SocioidAppBar(isProfile: true),
      body: StreamBuilder<QuerySnapshot>(
        stream: _usersref.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return circularProgress();
          } else {
            var user = snapshot.data?.docs;
            listUsers = user!;
            List<Text> usernames = [];
            for (var userData in listUsers) {
              usernames.add(Text('Name: ${userData['username']}\n'));
            }
            return ListView(
              children: usernames,
            );
          }
        },
      ),
    );
  }
}
