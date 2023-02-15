import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScoreBox extends StatefulWidget {
  final Color bgcolor;
  final Color text_color;
  final String value;
  const ScoreBox({
    super.key,
    required this.bgcolor,
    required this.text_color,
    required this.value,
  });

  @override
  State<ScoreBox> createState() => _ScoreBoxState();
}

class _ScoreBoxState extends State<ScoreBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 10.w,
      width: 20.w,
      decoration: BoxDecoration(
        color: widget.bgcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        widget.value.toString(),
        style: TextStyle(
          fontSize: 26,
          color: widget.text_color,
        ),
      ),
    );
  }
}
