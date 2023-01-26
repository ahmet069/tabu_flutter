import 'package:flutter/material.dart';
import 'package:tabu/src/core/dummy_data/dummy_data.dart';
import 'package:tabu/src/core/models/tabu_model.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late final List<TabuModel> _data;

  @override
  void initState() {
    _data = DummyData.getAllData().map((e) => TabuModel.fromJson(e)).toList();
    print(_data[1]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(_data[10].tabu1.toString()),
    );
  }
}
