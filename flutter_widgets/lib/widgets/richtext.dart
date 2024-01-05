import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  const RichTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Rich Test"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color:Colors.grey[300],
            height: 300,
          ),
          RichText(
           text: const TextSpan(
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
            children: [
              TextSpan(
                text:"Delbert Kimbi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )
              ),
              TextSpan(
                style: TextStyle(
                  color: Colors.grey,
                ),
                text: "He is a techpreneur, who sicks to eradicate poverty in the lifes of young youths, by exposing them to great dimensions of tech.",
              ),
            ]
           ),
          ),
        ],
      ),
    );
  }
}