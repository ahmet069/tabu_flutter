import 'package:auto_route/src/route/page_route_info.dart';
import 'package:flutter/material.dart';
import 'package:tabu/main.dart';
import 'package:tabu/src/core/config/app_router.dart';

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
          onPressed: () async {
            await router.pushAndPopUntil(Game_view(data: 'ahmet', order: 1),
                predicate: (a) => false);
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
