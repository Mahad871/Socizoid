import 'package:flutter/material.dart';

late Color kPrimaryAppColor;
late Color kSecondryAppColor;

TextStyle kAppTitleTextStyle = TextStyle(
  fontFamily: "Signatra",
  fontSize: 90.0,
  color: Colors.white,
);
TextStyle kTimelieAppBarTextStyle = TextStyle(
  fontFamily: "Signatra",
  fontSize: 50.0,
  color: Colors.amber,
);

AppBar SocioidAppBar({isTimeline = true, isProfile = false}) {
  double textSize = 70;
  String title = 'Socizoid';
  TextStyle appBarTextStyle = kTimelieAppBarTextStyle;

  if (isProfile == true) {
    isTimeline = false;
    textSize = 30;
    title = 'Profile';
    appBarTextStyle = kTimelieAppBarTextStyle;
  }

  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarHeight: 80,
    title: Hero(
      tag: 'AppName',
      child: Text(
        title,
        style: appBarTextStyle,
      ),
    ),
  );
}
