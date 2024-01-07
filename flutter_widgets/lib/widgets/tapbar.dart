import 'package:flutter/material.dart';

class TapBarPage extends StatefulWidget {
  const TapBarPage({super.key});

  @override
  State<TapBarPage> createState() => _TapBarPageState();
}

class _TapBarPageState extends State<TapBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tap Bar'),
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              child: const TabBar(tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Container(
                      color: Colors.blue[200],
                      child: const Text("Tab 1"),
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.blue[300],
                      child: const Text("Tab 2"),
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.blue[400],
                      child: const Text("Tab 3"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
