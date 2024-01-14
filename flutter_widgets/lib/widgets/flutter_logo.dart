import 'package:flutter/material.dart';

class FlutterLogoPage extends StatelessWidget {
  const FlutterLogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FlutterLogo(
        style: FlutterLogoStyle.stacked,
        textColor: Colors.blue,
        size: 300,
      ),
    );
  }
}
