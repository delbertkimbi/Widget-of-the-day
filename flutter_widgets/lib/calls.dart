import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animation.dart';
import 'package:flutter_widgets/widgets/column_row.dart';
import 'package:flutter_widgets/widgets/container.dart';
import 'package:flutter_widgets/widgets/expanded.dart';
import 'package:flutter_widgets/widgets/gestures.dart';
import 'package:flutter_widgets/widgets/listview.dart';

class Calls {
  List<Widget> pages = [
    const ContainerPage(),
    const ExpandedPage(),
    const ColumRowPage(),
    const ListviewPage(),
    const GesturesPage(),
    const AnimatedPage(),
  ];
  List<String> name = [
    "Container",
    "Expanded",
    "Colum/Row",
    "Listview",
    "GestureDetection",
    "AnimatedWidget",
  ];
}
