import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superdot/app.dart';

// i have chnaged somthing

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.offAll(const App(), transition: Transition.noTransition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: Get.width,
        height: Get.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Super Dot",
                style: TextStyle(
                  fontFamily: 'londrina',
                  fontSize: 80,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Loading...",
                style: TextStyle(
                    fontFamily: 'cute',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
