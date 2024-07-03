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
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(children: [
        Container(
          child: Text(widget.textToShow),
          alignment: Alignment.centerLeft,
        ),
        Row(
          children: [
            IconButton(
                onPressed: () => {qwe = 123}, icon: Icon(Icons.bookmark_add))
          ],
        ),
      ]),
    );
    // return ClipRRect(
    //     borderRadius: const BorderRadius.only(
    //       topLeft: Radius.circular(10.0),
    //       topRight: Radius.circular(10.0),
    //       bottomLeft: Radius.circular(10.0),
    //       bottomRight: Radius.circular(10.0),
    //     ),
    //     child: Column(
    //       children: [
    //         Container(
    //           padding: const EdgeInsets.only(bottom: 10),
    //           height: 40,
    //           color: Colors.green,
    //           child: Center(child: Text('${widget.textToShow}--$qwe')),
    //         ),
    //         TextButton(
    //           onPressed: () => setState(() {
    //             print(123123);
    //             print(qwe);
    //             ++qwe;
    //           }),

    //           style: TextButton.styleFrom(
    //               backgroundColor: Colors.blue, minimumSize: Size(300, 200)),
    //           // padding: const EdgeInsets.only(bottom: 10),
    //           // height: 40,
    //           // color: Colors.green,
    //           child: Center(child: Text(widget.textToShow)),
    //         ),
    //       ],
    //     ));
  }
}
