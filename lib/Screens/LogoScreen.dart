import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home:  Scaffold(
        body:  Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff004504),
            child: GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));},
                child: Image.asset("images/LOGO2.png",width: 350,height: 238,alignment: Alignment.center,)),
          ),
        ),

    );

  }
}
