import 'package:flutter/material.dart';
import 'package:flutter_widgets/container.dart';

class MyWidget extends StatelessWidget {
  final String widgetName;
  final int widgetNumber;
  final String widgetClass;
  const MyWidget({
    super.key,
    required this.widgetName,
    required this.widgetNumber,
    required this.widgetClass,
  });

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Column(
        children: [
          Text(
            'Widget $widgetNumber',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ContainerPage(),
                ),
              );
            },
            child: Text(
              widgetName,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
