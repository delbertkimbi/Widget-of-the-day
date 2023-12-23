import 'package:flutter/material.dart';

class HomeData extends StatelessWidget {
  final String widgetName;
  final int widgetNumber;
  final Widget destinationWidget;
  const HomeData({
    super.key,
    required this.widgetName,
    required this.widgetNumber, required this.destinationWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          'Widget $widgetNumber',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>  destinationWidget,
              ),
            );
          },
          child: Text(
            widgetName,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }
}
