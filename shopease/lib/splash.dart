import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopease/pages/signin.dart';
import 'package:shopease/pages/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => signin()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Name & Logo
            // Text("ShopEase",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Image.asset(
              "assets/images/logo/logo.png",
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 50,
            ),
            // Circular Progress
            CircularProgressIndicator(
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}
