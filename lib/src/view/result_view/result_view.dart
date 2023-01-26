import 'package:flutter/material.dart';

class result_view extends StatefulWidget {
  const result_view({super.key});

  @override
  State<result_view> createState() => _result_viewState();
}

class _result_viewState extends State<result_view> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: SafeArea(
        bottom: true,
        child: Scaffold(
          body: Index(),
        ),
      ),
    );
  }

  Widget Index() {
    double w = MediaQuery.of(context).size.width;

    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange.shade100,
                  ),
                  width: w,
                  child: Text(
                    "1. Takım skoru :10",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
