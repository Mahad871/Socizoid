import 'package:flutter/material.dart';
import 'package:socizoid/widgets/progress.dart';
import 'constants.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: SocioidAppBar(isTimeline: true),
      body: Center(
        child: circularProgress(),
      ),
    );
  }
}
