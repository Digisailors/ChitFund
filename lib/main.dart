import 'package:chitfund/color_schemes.dart';
import 'package:chitfund/home.dart';
import 'package:chitfund/screens/dashboard.dart';
import 'package:chitfund/screens/master/ledgerMaster.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
          bodyText2: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13),
          headline1: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 35),
          headline3: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      home: const LedgerMaster(),
      builder: (context, child) => Home(child: child!),
    );
  }
}
