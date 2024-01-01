import 'package:flutter/material.dart';

class AlertdialogPage extends StatelessWidget {
  const AlertdialogPage({super.key});
  Widget showDialog() {
    return const AlertDialog(
      backgroundColor: Colors.deepOrange,
      title: Text("First Dialog"),
      content: Text("I love flutter so much."),

      actions: [
        Text("Ok"),
        Text("Cancel"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text(" AlertDialog"),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[200],
          onPressed: showDialog,
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Show Dialog",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
