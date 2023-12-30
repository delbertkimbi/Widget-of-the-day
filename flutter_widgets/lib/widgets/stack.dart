import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Page"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.deepPurple[200],
            child: Container(
              height: 200,
              width: 200,
              alignment: const Alignment(0, 0),
              color: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }
}
