import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabu/src/mobx/counter.dart';
import 'package:tabu/src/view/result_view/widget/home_button.dart';
import 'package:tabu/src/view/result_view/widget/result_image.dart';
import 'package:tabu/src/view/result_view/widget/result_line.dart';

class result_view extends StatefulWidget {
  const result_view({super.key});

  @override
  State<result_view> createState() => _result_viewState();
}

class _result_viewState extends State<result_view> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ResultImage(),
                result_line(
                  result: counter.score1,
                  teamName: '1. Takım',
                ),
                result_line(
                  result: counter.score2,
                  teamName: '2. Takım',
                ),
              ],
            ),
            HomeButton()
          ],
        ),
      ),
    );
  }
}
