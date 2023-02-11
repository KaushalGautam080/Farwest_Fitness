import 'dart:async';

import 'package:farwest_fitness/home_page.dart';
import 'package:flutter/material.dart';

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
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Image.asset("images/logo.jpg"),
        ],
      ),
    );
  }
}
