import 'package:chitfund/Widget/drawer.dart';
import 'package:flutter/material.dart';

int defaultPadding = 8;

class Home extends StatefulWidget {
  const Home({super.key, required this.child});
  final Widget child;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTile = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MyDrawer(),

        Expanded(
          child: widget.child
        )
      ],
    );
  }
}
