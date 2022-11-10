import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(mainAxisSize: MainAxisSize.min, children: [
        FloatingActionButton.extended(
          onPressed: () {},
          label: const Text(' Refresh '),
          icon: Image.network(
            'https://cdn-icons-png.flaticon.com/512/3208/3208743.png',
            height: 25,
            width: 25,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton.extended(
          onPressed: () {
            
          },
          label: const Text(' Restart  '),
          icon: Image.network(
            'https://cdn-icons-png.flaticon.com/512/5725/5725961.png',
            height: 25,
            width: 25,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Shutdown'),
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
    );
  }
}
