// ignore_for_file: prefer_const_constructors

import 'package:chitfund/constrains.dart';
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
          onPressed: () {},
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
        children: [
          Container(
            width: double.maxFinite,
            color: Colors.white,
            height: getHeight(context) * 0.16,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getWidth(context) * 0.05),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(154, 158, 158, 158)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                ),
                SizedBox(
                  width: getWidth(context) * 0.02,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/3115/3115518.png',
                        height: getHeight(context) * 0.03,
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/3602/3602123.png',
                            height: getHeight(context) * 0.03,
                            width: getWidth(context) * 0.03,
                          ),
                        ),
                        Positioned(
                          right: 6,
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 12,
                              minHeight: 12,
                            ),
                            child: const Text(
                              '10',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: getWidth(context) * 0.15,
                      child: ListTile(
                        onTap: () {},
                        selectedTileColor:
                            Theme.of(context).colorScheme.primary,
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/1300972574/photo/millennial-male-team-leader-organize-virtual-workshop-with-employees-online.jpg?s=170667a&w=0&k=20&c=S9AVbcsSpY1e6vwbnrrZHJzlAtnuSQKtmk11fDItSHE=',
                          ),
                        ),
                        title: Text(
                          'Dashboard',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
          Expanded(
            child: Container(
              color: getColortheme(context).surfaceVariant,
            ),
          )
        ],
      ),
    );
  }
}
