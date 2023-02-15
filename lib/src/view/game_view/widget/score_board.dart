import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tabu/src/mobx/counter.dart';
import 'package:tabu/src/view/game_view/widget/score_box.dart';

class score_board extends StatefulWidget {
  const score_board({
    super.key,
  });

  @override
  State<score_board> createState() => _score_boardState();
}

class _score_boardState extends State<score_board> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Counter>(context);
    return Container(
      width: 100.w,
      alignment: Alignment.center,
      child: Observer(
        builder: (_) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ScoreBox(
                bgcolor: Colors.red,
                text_color: Colors.white,
                value: store.tabu_.toString()),
            ScoreBox(
                bgcolor: Color(0xFFFFF200),
                text_color: Colors.black,
                value: store.pas_.toString()),
            ScoreBox(
                bgcolor: Colors.green,
                text_color: Colors.white,
                value: store.true_.toString()),
          ],
          // Observer(builder: (_) => score_board()),
        ),
      ),
    );
  }
}
