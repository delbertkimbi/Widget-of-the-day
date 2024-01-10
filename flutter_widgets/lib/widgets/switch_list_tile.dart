import 'package:flutter/material.dart';

class SwitchListTilePage extends StatefulWidget {
  const SwitchListTilePage({super.key});

  @override
  State<SwitchListTilePage> createState() => _SwitchListTilePageState();
}

class _SwitchListTilePageState extends State<SwitchListTilePage> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("switch list"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SwitchListTile(
            title:const Text("SwitchListTile"),
            value: _lights,
            onChanged: (bool? value){
              setState(() {
              _lights = value!;
              });
            },
            secondary:const Icon(Icons.lightbulb_outlined),
          ),
        ],
      ),
    );
  }
}
