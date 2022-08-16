import 'package:flutter/material.dart';
import 'package:socizoid/pages/constants.dart';
import 'package:socizoid/widgets/progress.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SocioidAppBar(isProfile: true),
      body: linearProgress(),
    );
  }
}
