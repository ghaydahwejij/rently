import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rently/Screens/LoginScreen.dart';
import 'package:rently/Screens/payment.dart';

import 'add.dart';
import 'menu.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff004504),
            )),
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            child: Image.asset("images/l.png"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Menu()));
            },
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220.0),
              child: Text(" الملف الشخصي",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 150.0),
                  child: Icon(Icons.arrow_back_ios),
                ),
                Column(
                  children: [
                    Text(" مسعود المسعودي",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    Text(" تعديل الملف الشخصي",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400)),
                  ],
                ),
                Image.asset(
                  "images/user.png",
                  width: 50,
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("مسعود بن سعود السمعودي",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    Text(" :الاسم",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("092-67345632",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    Text(" :رقم الهاتف",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("21992334563",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    Text(" :الرقم الوطني",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("صورة من الجواز",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    Text(" :نوع اثبات الهوية",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("أبوسليم-الكيزة",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    Text(" :الموقع",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("0",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    Text(" :عدد العقارات المعروضة",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("مؤكد",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    Text(" :تأكيد الحساب",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("الإعدادات",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Payment(),
                          ),
                        );
                      },
                      child: Text("الدفع الألكتروني",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                    ),
                    Icon(
                      Icons.payment,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Add(),
                          ),
                        );
                      },
                      child: Text("إضافة عقار",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                    ),
                    Icon(
                      Icons.add_circle_rounded,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text("تسجيل الخروج",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400))),
                    Icon(
                      Icons.logout,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
