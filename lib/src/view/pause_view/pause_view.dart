import 'package:flutter/material.dart';

class pause_view extends StatefulWidget {
  pause_view({Key? key}) : super(key: key);

  @override
  State<pause_view> createState() => _pause_viewState();
}

class _pause_viewState extends State<pause_view> {
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.blueGrey,
      
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
    double h = MediaQuery.of(context).size.height;
    double line_width = w - 40;
    return Container(
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'SKOR',
              style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          // skore box
          Container(
            padding: EdgeInsets.all(20),
            width: w / 2,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              color: Colors.black,
            ),
            child: Text(
              "2",
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),
            ),
          ),
          Container(
            width: w,
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 2, 205, 100)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/game_view');
              },
              child: Text(
                'BAŞLA',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
