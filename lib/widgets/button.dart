import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const Button({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
              color: Colors.black87, fontSize: 16, fontFamily: 'Righteous'),
        ),
      ),
    );
  }
}
