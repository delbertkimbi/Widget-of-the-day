import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  int clickedTimes = 0;
  void funcClickedTimes() {
    setState(() {
      clickedTimes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Page'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 0,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Clickable Card'),
                subtitle: Text("The Card has been clicked $clickedTimes times"),
              ),
              MaterialButton(
                onPressed: () {
                  funcClickedTimes();
                },
                child: const Text(
                  "Click",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
