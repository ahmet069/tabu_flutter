import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/homebg.jpg'),
    );
  }
}


// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Image(image: AssetImage('images/homebg.jpg')),
//     );
//   }
// }
