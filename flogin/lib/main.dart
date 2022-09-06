import 'package:flutter/material.dart';
import 'fashion.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FASSHION VINNI'S LOGIN",
      debugShowCheckedModeBanner: false,
      home: FashionPage(),
    );
  }
}