import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageFooter extends StatefulWidget {
  const HomePageFooter({Key? key}) : super(key: key);

  @override
  State<HomePageFooter> createState() => _HomePageFooterState();
}

class _HomePageFooterState extends State<HomePageFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.black87,
      child: Row(
        children: [
          const SizedBox(width: 100),
          CircleAvatar(
            radius: 40,
            child: Icon(Icons.person),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Developed By :",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                "Kaushal Gautam",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 800),
          Row(
            children: [
              Text(
                "Connect with us : ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.instagram,
                  color: Colors.pink,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.youtube,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
