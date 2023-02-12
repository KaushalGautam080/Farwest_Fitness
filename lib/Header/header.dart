import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/button.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: 100,
          ),
          Icon(
            FontAwesomeIcons.dumbbell,
            color: Colors.orange,
            size: 40,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Text(
              "Farwest Fitness",
              style: TextStyle(
                fontFamily: 'Righteous',
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(
            width: 250,
          ),
          Row(
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
        ],
      ),
    );
  }
}
