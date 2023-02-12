import 'package:farwest_fitness/Header/header.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 600,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(20)),
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 100),
                              child: Container(
                                height: 350,
                                width: 500,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.yellow),
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(300),
                                  image: DecorationImage(
                                    image: AssetImage("images/logo.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Header(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
