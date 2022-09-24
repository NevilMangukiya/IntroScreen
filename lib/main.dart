import 'dart:js';

import 'package:adv_introscreen/Screens/homepage.dart';
import 'package:adv_introscreen/Screens/pagess.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'page': (context) => const IntroScreen(),
      },
    ),
  );
}
