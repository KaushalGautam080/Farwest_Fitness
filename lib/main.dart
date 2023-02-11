import 'package:farwest_fitness/home_page.dart';
import 'package:farwest_fitness/screens/about_us.dart';
import 'package:farwest_fitness/screens/contacts_us.dart';
import 'package:farwest_fitness/screens/gallery.dart';
import 'package:farwest_fitness/screens/services.dart';
import 'package:farwest_fitness/screens/trainers.dart';
import 'package:farwest_fitness/splash%20services/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farwest Fitness| Let\'s Get Healthier Together',
      home: HomePage(),
      routes: {
        '/home': (ctx) => HomePage(),
        '/about us': (ctx) => AboutUs(),
        '/services': (ctx) => Services(),
        '/gallery': (ctx) => Gallery(),
        '/trainers': (ctx) => Trainers(),
        '/contact': (ctx) => ContactUs(),
        '/splashscreen': (ctx) => SplashScreen(),
      },
      initialRoute: "/home",
    );
  }
}
