import 'package:flutter/material.dart';

import '../widgets/button.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        automaticallyImplyLeading: false,
        title: const Text("Gallery",
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
