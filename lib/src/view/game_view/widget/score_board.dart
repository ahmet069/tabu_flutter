import 'package:flutter/material.dart';

class score_board extends StatelessWidget {
  final int ttrue;
  final int tabu;
  final int pas;

  const score_board({
    required this.pas,
    required this.ttrue,
    required this.tabu,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    Widget score_box({
      required String number,
      required color,
    }) {
      return Container(
        alignment: Alignment.center,
        width: w * .26,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          number,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          score_box(number: tabu.toString(), color: Colors.red),
          score_box(
              number: pas.toString(), color: Color.fromARGB(255, 210, 194, 48)),
          score_box(number: ttrue.toString(), color: Colors.green),
        ],
      ),
    );
  }
}
