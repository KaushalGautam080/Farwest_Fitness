import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Image.asset("images/farwest_logo.jpg"),
          SpinKitThreeBounce(
            color: Colors.yellow,
            size: 40,
          )
        ],
      ),
    );
  }
}
