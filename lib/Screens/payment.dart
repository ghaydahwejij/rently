
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}


class _PaymentState extends State<Payment> {

  Future<void> _launchUrl(String url ) async {
    final Uri uri= Uri(scheme:"https",path: url);
    if (!await launchUrl (
          uri,
      mode:LaunchMode.externalApplication,
    )){
      throw Exception('Could not launch ');
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body:  ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)))),
          onPressed: () {
            _launchUrl("store.pay.net.ly/tdi/yvL6JY0K2ByEMvnqYxQDe75awRNmzrQoM04pj8WJbLlP036Xd1OVZ9ogG1ZM7m5Q");
          },
          child: Padding(
            padding: EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            child: Text(
              "! احجز الآن",
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
