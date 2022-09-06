import 'package:flogin/fashion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Navigate extends StatelessWidget {
  const Navigate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.light,
              statusBarColor: Colors.transparent),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 70, backgroundImage: AssetImage("images/vin.jpeg")),
            SizedBox(height: 10),
            Text(
              "Vinay M",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FashionPage()));
              },
              //minWidth: double.maxFinite,
              color: Colors.red[700],
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "CONTINUE",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ],
        )));
  }
}
