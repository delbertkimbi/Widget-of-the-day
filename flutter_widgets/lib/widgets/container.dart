import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// The Wiget of the day(Container)
      body: Column(
        children: [
          Container(
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
         const Center(
            child: Text("A Flutter container is a widget/class used to apply styling effects to a widget. It serves as a container that can house a widget in it. It is equivalent to HTML's <div> tag or React's <View> component. The styling is applied to the child widget and not the parent widget."),
          )
        ],
      ),
    );
  }
}
