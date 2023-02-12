import 'package:farwest_fitness/footer/home_page_footer.dart';
import 'package:flutter/material.dart';

import 'Header/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          image: const DecorationImage(
                            image: AssetImage("images/mohan.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 100),
                              child: Container(
                                height: 300,
                                width: 300,
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
                            ),
                            Positioned(
                                top: 200,
                                left: 1000,
                                child: Container(
                                  height: 400,
                                  width: 400,
                                  child: Column(
                                    children: const [
                                      Text(
                                        "SHAPE YOUR BODY",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text.rich(
                                        TextSpan(
                                            text: 'BE',
                                            style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: 'Kanit',
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '  STRONG',
                                                style: TextStyle(
                                                  fontSize: 40,
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Kanit',
                                                ),
                                              ),
                                            ]),
                                      ),
                                      Text(
                                        "TRAINING HARD",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'Kanit',
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Header(),
                ],
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black87,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "WHY FARWEST FITNESS ?",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.bold,
                          fontSize: 48,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Stack(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 50, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 400,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 400,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 400,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 400,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              const HomePageFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
