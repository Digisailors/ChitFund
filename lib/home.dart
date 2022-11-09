import 'package:chitfund/Widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int defaultPadding = 8;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTile = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyDrawer(),
        Expanded(
          child: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton:
                Column(mainAxisSize: MainAxisSize.min, children: [
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text(' Refresh '),
                icon: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/3208/3208743.png',
                  height: 25,
                  width: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text(' Restart  '),
                icon: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/5725/5725961.png',
                  height: 25,
                  width: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text('Shutdown'),
                icon: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/1/1228.png',
                  height: 25,
                  width: 25,
                  color: Colors.white,
                ),
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
            ]),
            body: Column(
              children: [],
            ),
          ),
        )
      ],
    );
  }
}
