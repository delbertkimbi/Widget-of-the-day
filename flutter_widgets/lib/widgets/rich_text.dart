import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  const RichTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.deepPurple[200],
            child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: "Delbert",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: "is a drumer",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )
                )
              ]),
            ),

          )
        ],
      ),
    );
  }
}
