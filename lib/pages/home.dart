import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:socizoid/pages/profile.dart';
import 'package:socizoid/pages/search.dart';
import 'package:socizoid/pages/timeline.dart';
import 'package:socizoid/pages/upload.dart';
import 'constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

GoogleSignIn _googleSignInAccount = GoogleSignIn();
GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isAuth = false;
  int _currentPageNumber = 0;
  PageController? _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _currentPageNumber);
    _googleSignInAccount.onCurrentUserChanged.listen((account) {
      if (account != null) {
        print(account);
        setState(() {
          isAuth = true;
        });
      } else {
        setState(() {
          isAuth = false;
        });
      }
    }, onError: (err) {
      print('Error loging in : $err');
    });
    _googleSignInAccount.signInSilently();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController?.dispose();
  }

  void loginUser() {
    _googleSignInAccount.signIn();
  }

  void logoutUser() {
    _googleSignInAccount.signOut();
  }

  jumpPage(int pageindex) {
    _currentPageNumber = pageindex;
    _pageController?.jumpToPage(pageindex);
  }

  Widget buildAuthScreen() {
    return Scaffold(
      // appBar: SocioidAppBar(isTimeline: true),
      body: PageView(
        children: [Timeline(), Search(), Upload(), Profile()],
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        // animationCurve: Curves.easeIn,
        animationDuration: Duration(milliseconds: 400),
        key: _bottomNavigationKey,
        buttonBackgroundColor: Theme.of(context).primaryColor.withOpacity(1),
        backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0),
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),

        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.search_sharp, size: 30),
          Icon(Icons.file_upload_rounded, size: 30),
          Icon(Icons.account_circle_sharp, size: 30),
        ],
        onTap: (index) {
          setState(
            () {
              _currentPageNumber = index;
              jumpPage(index);
            },
          );
        },
      ),
    );
  }

  Scaffold buildUnAuthScreen() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Theme.of(context).primaryColor.withOpacity(0.5),
              Colors.black,
              Theme.of(context).colorScheme.secondary.withOpacity(1),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Hero(
                tag: 'AppName',
                child: Text(
                  'Socizoid',
                  style: kAppTitleTextStyle,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                loginUser();
              },
              child: Container(
                width: 260.0,
                height: 60.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/google_signin_button.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isAuth ? buildAuthScreen() : buildUnAuthScreen();
  }
}
