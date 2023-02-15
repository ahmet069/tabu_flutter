import 'package:flutter/material.dart';

class MainWord extends StatefulWidget {
  final String text;
  const MainWord({super.key, required this.text});

  @override
  State<MainWord> createState() => _MainWordState();
}

class _MainWordState extends State<MainWord> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(30)),
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
