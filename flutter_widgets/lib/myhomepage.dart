import 'package:flutter/material.dart';
import 'package:flutter_widgets/homedata.dart';
import 'package:flutter_widgets/widgets/column_row.dart';
import 'package:flutter_widgets/widgets/container.dart';
import 'package:flutter_widgets/widgets/expanded.dart';

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
                              image: const DecorationImage(
                                /// A network image here
                                image: NetworkImage(
                                    "https://www.google.com/search?q=3d+images+without+background+for+my+learning+app&client=ubuntu-chr&hs=wC7&sca_esv=593113537&tbm=isch&sxsrf=AM9HkKkey6AinRRTKhTCEQnsifHLv2Z7ww:1703261685402&source=lnms&sa=X&ved=2ahUKEwi44t6duKODAxUvQkEAHc4NDcQQ_AUoAXoECAIQAw&biw=1474&bih=723&dpr=1#imgrc=0bLixX3Re2E0xM"),
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

                /// Data get
                const Row(
                  children: [
                    Column(
                      children: [
                        HomeData(
                          widgetName: "Container",
                          widgetNumber: 1,
                          destinationWidget: ContainerPage(),
                        ),
                        HomeData(
                          widgetName: "Expanded",
                          widgetNumber: 2,
                          destinationWidget: ExpandedPage(),
                        ),
                        HomeData(
                          widgetName: "Column/Row",
                          widgetNumber: 3,
                          destinationWidget: ColumRowPage(),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        HomeData(
                          widgetName: "Container",
                          widgetNumber: 1,
                          destinationWidget: ContainerPage(),
                        ),
                        HomeData(
                          widgetName: "Expanded",
                          widgetNumber: 2,
                          destinationWidget: ExpandedPage(),
                        ),
                        HomeData(
                          widgetName: "Column/Row",
                          widgetNumber: 3,
                          destinationWidget: ColumRowPage(),
                        ),
                      ],
                    ),
                  ],
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
