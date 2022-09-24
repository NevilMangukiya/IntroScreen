import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  checkPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Timer(const Duration(seconds: 6), () async {
      await prefs.setBool("isIntro", true);
    });
  }

  @override
  void initState() {
    super.initState();
    checkPrefs();
  }

  int indexVal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IndexedStack(
            index: indexVal,
            children: [
              Container(
                height: 500,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/gol3.jpg'))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            indexVal++;
                          });
                        },
                        child: const Text("Skip"))
                  ],
                ),
              ),
              Container(
                height: 500,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: const BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/images/hawa1.jpg'))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            indexVal++;
                          });
                        },
                        child: const Text("Skip"))
                  ],
                ),
              ),
              Container(
                height: 500,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/kedar4.jpg'))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            indexVal++;
                          });
                        },
                        child: const Text("Skip"))
                  ],
                ),
              ),
              Container(
                height: 500,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/khodal3.jpg'))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            indexVal++;
                            Navigator.of(context).pushReplacementNamed('page');
                          });
                        },
                        child: const Text("Skip"))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
