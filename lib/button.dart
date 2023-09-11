import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SendButton extends StatelessWidget {
  final String text;
  final Color color;

  SendButton(this.text, this.color, {super.key});
  dynamic width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
    return Container(
        width: width / 2.3,
        height: 80,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: color == Colors.white ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
        ));
  }
}
