import 'package:flutter/material.dart';

import '../widgets/button.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        automaticallyImplyLeading: false,
        title: const Text("About Us",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
      ),
      body: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.grey[150]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                  title: "Home",
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
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
    );
  }
}
