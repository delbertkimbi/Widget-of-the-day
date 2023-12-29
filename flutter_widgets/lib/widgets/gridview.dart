import 'package:flutter/material.dart';

class GrodViewPage extends StatelessWidget {
  const GrodViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 4,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: ((context, index) {
          return const Box();
        }),
      ),
    );
  }
}

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  double height = 100;
  double width = 100;
  Color color = Colors.blue;
  void changeItem() {
    setState(() {
      height = 120;
      width = 120;
      color = Colors.blue[200]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeItem();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
