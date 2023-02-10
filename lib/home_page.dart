import 'package:farwest_fitness/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 50,
        backgroundColor: Colors.yellow,
        title: Text(
          "Farwest Fitness ",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.grey[150]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                        title: "About us",
                        onTap: () {
                          Navigator.pushNamed(context, "/about us");
                        }),
                    Button(
                        title: "Services",
                        onTap: () {
                          Navigator.pushNamed(context, '/services');
                        }),
                    Button(
                        title: "Gallery",
                        onTap: () {
                          Navigator.pushNamed(context, '/gallery');
                        }),
                    Button(
                        title: "Trainers",
                        onTap: () {
                          Navigator.pushNamed(context, '/trainers');
                        }),
                    Button(
                        title: "Contact us",
                        onTap: () {
                          Navigator.pushNamed(context, '/contact');
                        }),
                  ],
                ),
              ),
            ),
            Container(
              child: Image.asset(
                "images/farwest_logo.jpg",
              ),
            ),
            Container(
              height: 400,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
