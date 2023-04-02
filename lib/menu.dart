import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cario'),
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(

            children: [

            Container(
              decoration: BoxDecoration(
                color: Color(0xff004504),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight:Radius.circular(40)),
              ),
              width: 400,
              height: 349,
              child:Image.asset("images/logo.png",width: 355,height: 238,alignment: Alignment.topCenter,)),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 157,
                  height: 206,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                        color: Color(0x61000000),
                        blurRadius: 4,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
            ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("images/b.png",width: 139,height: 140,),
                        Text("مباني",style: TextStyle(color: Color(0xff000000), fontSize: 20,fontFamily: 'Cairo'),
                        )
                      ],
                    ),
                  ),

                ),
                SizedBox(
                  width: 157,
                  height: 206,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x61000000),
                          blurRadius: 4,
                          offset: Offset(0, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("images/t.png",width: 139,height: 140,),
                        Text("مواصلات",style: TextStyle(color: Color(0xff000000), fontSize: 20,fontFamily: 'Cairo'),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
              Padding(
                padding: const EdgeInsets.only(right: 57.0),
                // child: Image.asset("images/r2-removebg-preview 2.png",width: 211,height: 182,),
              )
          ],),
        ),
      ),
    );
  }
}
