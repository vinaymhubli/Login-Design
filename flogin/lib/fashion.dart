import 'package:flogin/overview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FashionPage extends StatefulWidget {
  FashionPage({Key? key}) : super(key: key);

  @override
  State<FashionPage> createState() => _FashionPageState();
}

class _FashionPageState extends State<FashionPage> {
  _buildTextField(IconData icon, String hinttext) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(color: Colors.black54),
        child: TextField(
          style: TextStyle(color: Colors.grey, fontSize: 15.0),
          decoration: InputDecoration(
            hintText: hinttext,
            border: InputBorder.none,
            icon: Icon(icon, color: Colors.grey),
            hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/dhoni.jpeg",
              fit: BoxFit.cover,
              color: Colors.black38,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 110),
                    Text("Welcome Developers ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Text(
                      "Sign in to your account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildTextField(Icons.mail_outline, "Email"),
                    SizedBox(
                      height: 20.0,
                    ),
                    _buildTextField(Icons.lock, "Password"),
                    SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Navigate()));
                      },
                      minWidth: double.maxFinite,
                      color: Colors.red[700],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                    // Expanded(child: Container()),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(bottom: 90),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.googlePlusSquare,
                                color: Colors.green,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "google",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            color: Colors.white,
                          ),
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.facebook,
                                  color: Colors.blue),
                              SizedBox(width: 5),
                              Text(
                                "Facebook",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
