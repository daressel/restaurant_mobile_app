import 'package:flutter/material.dart';
import 'package:restaurant_mobile_app/untils/screen.dart';

class DetailedView extends StatefulWidget {
  final String name;

  const DetailedView({super.key, required this.name});

  @override
  State<DetailedView> createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  String name = '';

  @override
  void initState() {
    name = widget.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = getSizeByScreenPercent(context, 90);
    return GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          height: size.height,
          width: size.width,
          padding: const EdgeInsets.all(12),
          child: Text(name),
        ));
  }
}
