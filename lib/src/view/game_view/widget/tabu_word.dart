import 'package:flutter/material.dart';

class tabu_word extends StatelessWidget {
  final String text;
  const tabu_word({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(30),
      // ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 26,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
