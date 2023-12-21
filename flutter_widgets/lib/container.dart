import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// The Wiget of the day(Container)
      body: Container(
        height: 300,
        width: 300,
        //Interesting decoration property
        decoration: BoxDecoration(
            // color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Colors.black,
              width: 8,
            )),
        child: Center(
          child: Image.asset(
            "assets/delbert.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
