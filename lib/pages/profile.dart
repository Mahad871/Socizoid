import 'package:flutter/material.dart';
import 'package:socizoid/pages/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SocioidAppBar(isProfile: true),
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}


// BottomNavigationBar(
//           unselectedItemColor: Theme.of(context).primaryColor.withOpacity(1),
//           selectedItemColor: Theme.of(context).colorScheme.secondary,
//           iconSize: 30,
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.upload),
//               label: 'Upload',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle),
//               label: 'Profile',
//             ),
//           ],
//           currentIndex: _currentPageNumber,
//           onTap: (value) {
//             setState(() {
//               jumpPage(value);
//             });
//           }),