import 'package:flutter/material.dart';


class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    List post = [
      "Post 1",
      "Post 2",
      "Post 3",
      "Post 4",
    ];
    List stories = [
      "Story 1",
      "Story 2",
      "Story 3",
      "Stort 4",
    ];
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: post.length, // The number of items in the list
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Squares(
                text: stories[index],
              );
            }),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: post.length, // The number of items in the list
            itemBuilder: ((context, index) {
              return Squares(
                text: post[index],
              );
            }),
          ),
        )
      ],
    );
  }
}

class Squares extends StatelessWidget {
  const Squares({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        color: Colors.deepPurple,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class Circles extends StatelessWidget {
  const Circles({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.pink[200]),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
