import 'package:flutter/material.dart';

class TablesPage extends StatefulWidget {
  const TablesPage({super.key});

  @override
  State<TablesPage> createState() => _TablesPageState();
}

class _TablesPageState extends State<TablesPage> {
  TableRow tableRow =const TableRow(children: [
    Padding(padding: EdgeInsets.all(8),
    child: Text("Content 1"),
    ),
        Padding(padding: EdgeInsets.all(8),
    child: Text("Content 2"),
    ),
        Padding(padding: EdgeInsets.all(8),
    child: Text("Content 3"),
    ),
        Padding(padding: EdgeInsets.all(8),
    child: Text("Content 4"),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Tables"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Table(

          border: TableBorder.all(),
          defaultColumnWidth:const FixedColumnWidth(90.0),
          children: [
              tableRow,
              tableRow,
              tableRow,
              tableRow,
          ],
        ),
      ),
    );
  }
}
