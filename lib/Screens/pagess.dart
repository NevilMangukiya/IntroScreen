import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nevil Mangukiya'),
        backgroundColor: Colors.teal,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Text(
          "WelCome",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 10),
        ),
      ),
    );
  }
}
