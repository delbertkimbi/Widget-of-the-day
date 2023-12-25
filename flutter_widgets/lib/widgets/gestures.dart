import 'package:flutter/material.dart';

class GesturesPage extends StatefulWidget {
  const GesturesPage({super.key});

  @override
  State<GesturesPage> createState() => _GesturesPageState();
}

class _GesturesPageState extends State<GesturesPage> {
  late final int n;
  void clicked() {
    setState(() {
      n++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestures page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("This button was clicked $n times"),
            GestureDetector(
              onDoubleTap: () => clicked,
              child: Container(
                color: Colors.teal[200],
                padding:const EdgeInsets.all(8.0),
                child:const Text(
                  "ClickMe",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
