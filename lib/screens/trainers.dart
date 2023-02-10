import 'package:flutter/material.dart';

class Trainers extends StatefulWidget {
  const Trainers({Key? key}) : super(key: key);

  @override
  State<Trainers> createState() => _TrainersState();
}

class _TrainersState extends State<Trainers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        automaticallyImplyLeading: false,
        title: Text("Trainers"),
      ),
    );
  }
}
