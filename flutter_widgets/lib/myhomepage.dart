import 'package:flutter/material.dart';
import 'package:flutter_widgets/homedata.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  final String widgetName;
  final int widgetNumber;
  const MyHomePage(
      {super.key, // Declare a key
      required this.title,
      required this.widgetName,
      required this.widgetNumber}); // Pass the key to the super constructor

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
                            "This is an App that helps me track my growth in the learn of flutter per day.",
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /// Data get
            const HomeData(
              widgetName: "Container",
              widgetNumber: 1,
            ),
            const HomeData(
              widgetName: "Expanded",
              widgetNumber: 2,
            ),
            const HomeData(
              widgetName: "Column/Row",
              widgetNumber: 3,
            ),
          ],
        ),
      ),
    );
  }
}
