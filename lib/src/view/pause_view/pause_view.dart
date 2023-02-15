import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tabu/src/mobx/counter.dart';
import 'package:tabu/src/view/pause_view/widget/pause_bottom.dart';
import 'package:tabu/src/view/pause_view/widget/pause_score.dart';

class pause_view extends StatefulWidget {
  final String score;
  const pause_view({
    super.key,
    required this.score,
  });

  @override
  State<pause_view> createState() => _pause_viewState();
}

class _pause_viewState extends State<pause_view> {
  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Container(
          padding: EdgeInsets.only(top: 70, bottom: 40),
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage("assets/images/pausebg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(), //! top placeholder
              PauseScore(score: widget.score),
              PauseBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
