import 'package:flutter/material.dart';
import 'package:flutter_widgets/homedata.dart';
import 'package:flutter_widgets/widgets/column_row.dart';
import 'package:flutter_widgets/widgets/container.dart';
import 'package:flutter_widgets/widgets/expanded.dart';
import 'package:flutter_widgets/widgets/gestures.dart';
import 'package:flutter_widgets/widgets/listview.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    super.key, // Declare a key
    required this.title,
  }); // Pass the key to the super constructor

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [
    const ContainerPage(),
    const ExpandedPage(),
    const ColumRowPage(),
    const ListviewPage(),
    const GesturesPage(),
  ];
  List<String> names = [
    "Container",
    "Expanded",
    "Colum/Row",
    "Listview",
    "GestureDetection",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,

        // Making the appbar have circular radius
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(0),
          ),
        ),

        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/program.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(2, 15, 2, 20),
                            padding: const EdgeInsets.all(5),
                            height: 150,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.blue,
                                width: 5,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "This is an App that helps me track my growth in the learning of flutter per day.",
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                /// Data get using listview.builder widget
                ListView.builder(
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return HomeData(
                      widgetName: names[index],
                      widgetNumber: index + 1,
                      destinationWidget: pages[index],
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                color: Color.fromARGB(255, 25, 21, 21),
              ),
              child: const Center(
                child: Text(
                  "FOOTER",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
