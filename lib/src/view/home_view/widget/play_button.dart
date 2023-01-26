import 'package:flutter/material.dart';

class play_button extends StatelessWidget {
  final double width;
  const play_button({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll<Color>(Color.fromRGBO(77, 199, 17, 1)),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/game_view');
          },
          child: Text("OYNA",
              style: TextStyle(
                fontSize: 34,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
