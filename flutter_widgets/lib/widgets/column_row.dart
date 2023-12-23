import 'package:flutter/material.dart';

class ColumRowPage extends StatelessWidget {
  const ColumRowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration:const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 110,
                    color: Colors.deepPurple[500],
                  ),
                  Container(
                    height: 130,
                    width: 100,
                    color: Colors.deepPurple[400],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepPurple[200],
                  ),
                ],
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Text(
                  "The Row widget is a commonly used layout pattern in Flutter applications. It is a multi-child widget that displays its children in a horizontal array. Its main-axis alignment is horizontal, as shown in the image below.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.deepPurple[500],
                  ),
                  Container(
                    height: 100,
                    width: 200,
                    color: Colors.deepPurple[400],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepPurple[200],
                  ),
                ],
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Text(
                  "In Flutter, the Column widget is used to display its children in a vertical arrangement. It is one of the most commonly used layout widgets in Flutter, especially when building responsive layouts that adapt to different screen sizes.",
                  style: TextStyle(
                    color: Colors.black,
                     fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
