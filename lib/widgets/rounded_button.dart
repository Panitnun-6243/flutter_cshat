import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final Function(String) onPressed;

  const RoundedButton(
      {Key? key,
      required this.name,
      required this.width,
      required this.height,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height * 0.25),
          color: const Color.fromRGBO(0, 82, 218, 1.0)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          name,
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}
