import 'package:flutter/material.dart';
import 'package:tabu/src/view/home_view/widget/home_image.dart';
import 'package:tabu/src/view/home_view/widget/home_title.dart';
import 'package:tabu/src/view/home_view/widget/play_button.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => home_viewState();
}

class home_viewState extends State<home_view> {
  @override
  Widget build(BuildContext context) {
    // final counter = Provider.of(context);

    return Scaffold(
        body: Container(
      color: Colors.white,
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              HomeTitle(),
              HomeImage(),
            ],
          ),
          PlayButton(),
        ],
      )),
    ));
  }
}
