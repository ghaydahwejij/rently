import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rently/Screens/cars.dart';

import 'Profile.dart';
import 'menu.dart';

class CarsHome extends StatefulWidget {
  const CarsHome({Key? key}) : super(key: key);

  @override
  State<CarsHome> createState() => _CarsHomeState();
}

class _CarsHomeState extends State<CarsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xff004504),
              ), onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Menu()));},
            );
          },
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()));},
              icon: Icon(Icons.person,color: Color(0xff004504),)),
        ],
      ),
      body: Column(
        children: [
          Image.asset("images/l.png",width: 120,),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Cars()));
            },
            child: Stack(
                alignment: Alignment.center,
                children:[ Padding(
                padding: EdgeInsets.only(right: 110,left: 30),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff88ab88),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x61000000),
                        blurRadius: 4,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
                  width: 300,
                  height: 160,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("سيـــّارات",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("   السيارات التي تُريدها",
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("     أنواع مختلفة ",
                            style: TextStyle(fontSize: 14,color: Colors.black),),
                              Icon(Icons.car_rental,color: Colors.black,)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("    تناسب ميزانيتك",
                            style: TextStyle(fontSize: 14,color: Colors.black),),
                          Icon(Icons.monetization_on_outlined,color: Colors.black,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
                Padding(padding: EdgeInsets.only(left: 150,right: 20),
                  child: Image.asset("images/c3.png",),
                )]
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){ showAlertDialog(context);},
            child: Stack(
                alignment: Alignment.center,
                children:[ Padding(
                  padding: EdgeInsets.only(right: 110,left: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff88ab88),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x61000000),
                          blurRadius: 4,
                          offset: Offset(0, 4), // Shadow position
                        ),
                      ],
                    ),
                    width: 300,
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 40,),
                            Text("درّاجـــات",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 45,),
                            Text("قريــــــبا",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 50,),
                            Icon(Icons.monetization_on_outlined,color: Colors.white,size: 30,),
                            Icon(Icons.car_rental,color: Colors.white,size: 30,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                  Padding(padding: EdgeInsets.only(left: 170,right: 20),
                    child: Image.asset("images/motor.png",),
                  )]
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){ showAlertDialog(context);},
            child: Stack(
                alignment: Alignment.center,
                children:[ Padding(
                  padding: EdgeInsets.only(right: 110,left: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff88ab88),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x61000000),
                          blurRadius: 4,
                          offset: Offset(0, 4), // Shadow position
                        ),
                      ],
                    ),
                    width: 300,
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 40,),
                            Text("بـاصـــات",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 45,),
                            Text("قريــــــبا",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 50,),
                            Icon(Icons.monetization_on_outlined,color: Colors.white,size: 30,),
                            Icon(Icons.car_rental,color: Colors.white,size: 30,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                  Padding(padding: EdgeInsets.only(left: 170,right: 20),
                    child: Image.asset("images/bus.png",),
                  )]
            ),
          ),
        ],
      ),


    );
  }
}


showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("قيد التطوير :)"),
    content: Text("قريــــبا إن شاء الله."),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
