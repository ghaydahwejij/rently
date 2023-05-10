import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rently/Screens/signup.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'main.dart';
import 'menu.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late UserCredential user;

  @override
  Widget build(BuildContext context) {
    bool isPasswordObs = true;

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Scaffold(
        body: Container(
          color: Color(0xff004504),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Padding(
                padding: const EdgeInsets.only(right: 44.0),
                child: Image.asset(
                  "images/LOGO2.png",
                  alignment: Alignment.center,
                  width: 320,
                  height: 200,
                ),
              ),
              Text(
                "مرحباً بعودتك",
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Cairo', fontSize: 40),
              ),
              Text("مرحباً بعودتك ! ادخل بياناتك الشخصية",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Cairo', fontSize: 22)),
              SizedBox(
                height: 20,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.5, color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    label: Text(
                      "البريد الألكتروني",
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Cairo'),
                    ),
                    hintText: "أدخل بريدك الألكتروني",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1.5, color: Colors.white),
                    ),
                    label: Text(
                      "الرقم السري",
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Cairo'),
                    ),
                    hintText: "ادخل رقمك السري",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          isPasswordObs = !isPasswordObs;
                          setState(() {});
                        },
                        icon: isPasswordObs
                            ? Icon(Icons.visibility, color: Colors.white)
                            : Icon(Icons.visibility_off)),
                  ),
                  obscureText: isPasswordObs,
                  onChanged: (text) {
                    print(text);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.go,
                  validator: (pass) {
                    if (pass?.isEmpty == true) {
                      return "Password can't be empty";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 255,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () async {
                        try {
                          user = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: "gidaa@gmail.com", password: "123456");

                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            print('No user found for that email.');
                          } else if (e.code == 'wrong-password') {
                            print('Wrong password provided for that user.');
                          }
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Menu(),
                          ),
                        );
                      },
                      child: Text(
                        "تسجيل دخول",
                        style: TextStyle(
                            color: Color(0xff1E5B22),
                            fontSize: 18,
                            fontFamily: 'Cairo'),
                      ),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(38.0),
                        )),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 255,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () async {
                        UserCredential cred = await signInWithGoogle();
                        print(cred);
                      },
                      child: Row(
                        children: [
                          Image.asset("icons/google.png"),
                          Text(
                            "تسجيل دخول عبر جوجل",
                            style: TextStyle(
                                color: Color(0xff1E5B22),
                                fontSize: 18,
                                fontFamily: 'Cairo'),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(38.0),
                        )),
                      )),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ),
                        );
                      },
                      child: Text(
                        "ليس لديك حساب ؟ سجل الأن",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Cairo',
                            fontSize: 16),
                      ))),
            ]),
          ),
        ),
      ),
    );
  }
}
