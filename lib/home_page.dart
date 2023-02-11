import 'package:farwest_fitness/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)),
          ),
          backgroundColor: Colors.yellow,
          title: Text(
            "Farwest Fitness ",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          children: [
            // navigation bar
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      FontAwesomeIcons.dumbbell,
                      size: 40,
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
              ),
            ),
            // body portion
            Container(
              height: 500,
            ),
            //footer
            Container(
              color: Colors.black87,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () async {
                      print("facebook pressed");
                      final url =
                          Uri.http("https://www.facebook.com/farwestfitness");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    },
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                    ),
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.tiktok,
                    ),
                    color: Colors.pink,
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.youtube,
                    ),
                    color: Colors.red,
                  ),
                  SizedBox(width: 10)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
