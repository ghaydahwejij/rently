import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rently/Screens/LoginScreen.dart';
import 'package:rently/Screens/LogoScreen.dart';
import 'package:rently/Screens/beach_details.dart';
import 'package:rently/Screens/cars.dart';
import 'package:rently/Screens/cars_home.dart';
import 'package:rently/Screens/flat_details.dart';
import 'package:rently/Screens/hall_details.dart';
import 'package:rently/Screens/halls.dart';
import 'package:rently/Screens/menu.dart';
import 'package:rently/provider/beach_db_provider.dart';
import 'package:rently/provider/flat_db_provider.dart';
import 'package:rently/provider/hall_db_provider.dart';
import 'package:rently/provider/house_db_provider.dart';
import 'package:rently/Screens/search.dart';
 import 'package:firebase_core/firebase_core.dart';
 import 'package:firebase_auth/firebase_auth.dart';
 import 'package:google_sign_in/google_sign_in.dart';

import 'Profile.dart';
import 'beach.dart';
import 'fav.dart';
import 'flats.dart';
import 'home_details.dart';
import 'houses.dart';
 Future main() async {

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
     UserCredential user;
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => FlatProvider()),
        ChangeNotifierProvider(create: (_) => HouseProvider()),
        ChangeNotifierProvider(create: (_) => BeachProvider()),
        ChangeNotifierProvider(create: (_) => HallProvider()),
      ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Cairo'),
          home: LoginScreen(),
        ),)
  );
}


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  var currentPageIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Profile(),
    Search(),
    Fav(),
    Houses()

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.white ,
        selectedIconTheme: IconThemeData(color: Color(0xff004504), size: 40),
        selectedItemColor: Color(0xff004504),
        unselectedIconTheme: IconThemeData(color: Colors.grey,),
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 12,
        unselectedLabelStyle:
        TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 25,
            ),
            label: "حسابك",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 25,
            ),
            label: "بحث",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 25,
            ),
            label: "المفضلة",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 25,
            ),
            label: "الرئيسية",
          ),
        ],
      ),
    );
  }
}



Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}






