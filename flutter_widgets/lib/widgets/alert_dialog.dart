import 'package:flutter/material.dart';

class AlertdialogPage extends StatefulWidget {
  const AlertdialogPage({super.key});

  @override
  State<AlertdialogPage> createState() => _AlertdialogPageState();
}

class _AlertdialogPageState extends State<AlertdialogPage> {
  void showmeDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.deepOrange,
            title: const Text("First Dialog"),
            content: const Text("I love flutter so much."),
            actions: [
              MaterialButton(
                onPressed: () {},
                child:const Text("OK"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child:const Text("Cancil"),
              )
            ],
          );
        });
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
          onPressed: showmeDialog,
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
