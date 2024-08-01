import 'package:flutter/material.dart';

class TestCard extends StatefulWidget {
  final String textToShow;
  final VoidCallback testCallback;
  final int some;

  const TestCard(
      {super.key,
      required this.textToShow,
      required this.testCallback,
      required this.some});

  @override
  State<StatefulWidget> createState() {
    return _TestCardState();
  }
}

class _TestCardState extends State<TestCard> {
  int qwe = -1;

  @override
  void initState() {
    qwe = widget.some;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      height: height * 0.7,
      width: width * 0.1,
      child: Column(children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(widget.textToShow),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () => {qwe = 123}, icon: Icon(Icons.bookmark_add))
          ],
        ),
      ]),
    );
  }
}
