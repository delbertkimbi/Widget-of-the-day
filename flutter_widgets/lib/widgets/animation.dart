import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  TextStyle textStyle = const TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 25,
    color: Colors.white,
  );
  double hight = 100;
  double width = 100;
  double x = -0.5;
  double y = -0.5;
  Color color = Colors.deepPurple;
  void _itemAnimate() {
    setState(() {
      hight = 300;
      width = 300;
      color = Colors.deepPurple[400]!;
      x = 0.5;
      y = 0.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: GestureDetector(
        onTap: () {
          _itemAnimate();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          height: hight,
          width: width,
          color: color,
          alignment: Alignment(x, y),
          child: Text(
            "Animated Widget",
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
