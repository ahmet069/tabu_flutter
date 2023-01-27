import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:tabu/src/core/models/tabu_model.dart';
import 'package:tabu/src/view/game_view/widget/score_board.dart';
import 'package:tabu/src/view/game_view/widget/tabu_word.dart';
import 'package:tabu/src/core/dummy_data/dummy_data.dart';
import 'package:sizer/sizer.dart';

import '../../../main.dart';
import '../../core/config/app_router.dart';

class game_view extends StatefulWidget {
  final String data;
  final int order;
  const game_view({
    super.key,
    required this.data,
    required this.order,
  });

  @override
  State<game_view> createState() => _game_viewState();
}

class _game_viewState extends State<game_view> {
  late final List<TabuModel> _data;

  @override
  void initState() {
    _data = DummyData.getAllData().map((e) => TabuModel.fromJson(e)).toList();
    print(_data[1]);
    super.initState();
  }

  int _counter = 0;
  int _true = 0;
  int _tabu = 0;
  int _pas = 4;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Index(),
      ),
    );
  }

  Widget Index() {
    double w = MediaQuery.of(context).size.width;
    final CountDownController _controller = CountDownController();
    return Container(
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [score_board(pas: _pas, ttrue: _true, tabu: _tabu)],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade300,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //! Cards Area
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      _data[_counter].word.toString(),
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  tabu_word(text: _data[_counter].tabu1.toString()),
                  tabu_word(text: _data[_counter].tabu2.toString()),
                  tabu_word(text: _data[_counter].tabu3.toString()),
                  tabu_word(text: _data[_counter].tabu4.toString()),
                  tabu_word(text: _data[_counter].tabu5.toString()),
                  ElevatedButton(
                    onPressed: () async {
                      await router.pushAndPopUntil(
                          Pause_view(
                              score: (_true - _tabu).toString(),
                              order: widget.order),
                          predicate: (a) => false);
                    },
                    child: Text(widget.data),
                  )
                ],
                //! Cards Area
              ),
            ),
            Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(0)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 25.w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red),
                        ),
                        onPressed: () {
                          setState(() {
                            _tabu++;
                            _counter++;
                          });
                        },
                        child: Text(
                          "tabu",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: w / 4,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.yellow),
                        ),
                        onPressed: () {
                          if (_pas > 0) {
                            setState(() {
                              _pas--;
                              _counter++;
                            });
                          }
                        },
                        child: Text(
                          "pas",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 50.w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.green),
                        ),
                        onPressed: () {
                          setState(() {
                            _true++;
                            _counter++;
                          });
                        },
                        child: Text(
                          "Doğru",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
