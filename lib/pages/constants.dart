import 'package:flutter/material.dart';

Color kPrimaryAppColor = Colors.red;
Color kSecondryAppColor = Colors.black;

TextStyle kAppTitleTextStyle = TextStyle(
  fontFamily: "Signatra",
  fontSize: 90.0,
  color: Colors.white,
);
TextStyle kTimelieAppBarTextStyle = TextStyle(
  fontFamily: "Signatra",
  fontSize: 50.0,
  color: Colors.grey,
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

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  hintStyle: TextStyle(color: Colors.grey),
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

var kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your email',
  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryAppColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryAppColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
