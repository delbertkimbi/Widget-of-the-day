import 'package:flutter/material.dart';

class SliverAppBarPage extends StatelessWidget {
  const SliverAppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: CustomScrollView(
        slivers: [
          // Sliver APp bar
          SliverAppBar(
            floating: true,
            pinned: false,
            expandedHeight: 200,
            leading: const Icon(Icons.menu),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              title: const Text("SliverAppBar"),
            ),
          ),
          // SLiver items
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child: Container(
                  height: 300,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
