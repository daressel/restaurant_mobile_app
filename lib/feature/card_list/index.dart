import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/feature/card/index.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      padding: const EdgeInsets.only(bottom: 80, left: 15, right: 15, top: 15),
      itemBuilder: (context, index) {
        int some = 0;
        return Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: TestCard(
              textToShow: 'qwe$index$some',
              testCallback: () => {some++},
              some: index,
            ));
      },
    );
  }
}
