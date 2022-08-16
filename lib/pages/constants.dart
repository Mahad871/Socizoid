import 'package:flutter/material.dart';

TextStyle kAppTitleTextStyle = TextStyle(
  fontFamily: "Signatra",
  fontSize: 90.0,
  color: Colors.white,
);
TextStyle kTimelieAppBarTextStyle = TextStyle(
  fontFamily: "Signatra",
  fontSize: 50.0,
  color: Colors.black,
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
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 80,
    title: Text(
      title,
      style: appBarTextStyle,
    ),
    // actions: [
    //   Padding(
    //     padding: EdgeInsets.all(10),
    //     child: TextButton(
    //       onPressed: () => logoutUser(),
    //       child: Text('Logout',
    //           style: TextStyle(
    //               backgroundColor: Colors.white,
    //               color: Theme.of(context).primaryColor.withOpacity(1))),
    //     ),
    //   )
    // ],
  );
}
