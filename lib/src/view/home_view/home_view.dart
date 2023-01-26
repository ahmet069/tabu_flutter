import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tabu/src/view/home_view/widget/play_button.dart';
import 'package:tabu/src/view/home_view/widget/team_name.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
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
    var _duration = '120';
    var _pas = '4';
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    double line_width = w - 40;
    // var _duration = '120';
    TextEditingController _textController1 =
        TextEditingController(text: _duration);
    TextEditingController _textController2 = TextEditingController(text: _pas);
    return Container(
      width: line_width,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          //! TEAM NAME ----------------------------------------------------------------
          team_name(name: '1. Takım', width: w),
          team_name(name: '2. Takım', width: w),
          //! TEAM NAME ----------------------------------------------------------------
          //? settings are -------------------------------------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: line_width * .7,
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Oyun Süresi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: line_width / 4,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(20)),
                  //! TEXT FİELD
                  child: TextField(
                    enabled: false,
                    controller: _textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    keyboardAppearance: Brightness.dark,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (text) {},
                    //! TEXT FİELD
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: line_width * .7,
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Pas Hakkı ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: line_width / 4,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    enabled: false,
                    controller: _textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    keyboardAppearance: Brightness.dark,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter
                          .digitsOnly //? for only numbers characters
                    ],
                    //! TEXT FİELD
                  ),
                ),
              ],
            ),
          ),
          //? settings are -------------------------------------------------------------
          SizedBox(height: 5),
          play_button(width: w),
        ],
      ),
    );
  }
}
