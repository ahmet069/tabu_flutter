import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tabu/src/core/models/tabu_model.dart';
import 'package:tabu/src/mobx/counter.dart';
import 'package:tabu/src/view/game_view/widget/duration_bar.dart';
import 'package:tabu/src/view/game_view/widget/main_word.dart';
import 'package:tabu/src/view/game_view/widget/score_board.dart';
import 'package:tabu/src/view/game_view/widget/tabu_word.dart';
import 'package:tabu/src/core/dummy_data/dummy_data.dart';
import 'package:sizer/sizer.dart';

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
    //todo code to randomly regenerate an existing data
    var random = new Random();
    _data = DummyData.getAllData().map((e) => TabuModel.fromJson(e)).toList();
    _data.shuffle(random);
    //todo code to randomly regenerate an existing data
    print(_data[1]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //! observer required (chacked)
                  score_board(),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: durationBar(order: widget.order),
                  ),
                ],
              ),
              // ! middle area tabu card area
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade200,
                ),
                child: Observer(
                  builder: (_) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MainWord(text: _data[counter.counter].word.toString()),
                      tabu_word(text: _data[counter.counter].tabu1.toString()),
                      tabu_word(text: _data[counter.counter].tabu2.toString()),
                      tabu_word(text: _data[counter.counter].tabu3.toString()),
                      tabu_word(text: _data[counter.counter].tabu4.toString()),
                      tabu_word(text: _data[counter.counter].tabu5.toString()),
                    ],
                  ),
                ),
              ),
              // ! middle area tabu card area

              //!! Buttons Area ----------------------------------------------------------------
              Container(
                  height: 10.h,
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
                            counter.increment_tabu();
                            counter.setScore1(widget.order);
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
                            if (counter.pas_ > 0) {
                              counter.decrement_pas();
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
                            counter.increment_true(text: 'ahmet');
                            counter.setScore1(widget.order);
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
      ),
    );
  }
}
