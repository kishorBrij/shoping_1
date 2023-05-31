
import 'package:flutter/material.dart';
import 'package:shoping_1/utils/image.dart';
import 'dart:async';

import 'package:shoping_1/widget/screen/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 4),(){

      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginPage())
      );

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          //  width: double.infinity,
          color: Colors.teal,
          child:Image.asset(
            AppImage.splash,
            fit: BoxFit.cover,
            //fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
