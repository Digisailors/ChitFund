import 'package:chitfund/color_schemes.dart';
import 'package:chitfund/home.dart';
import 'package:chitfund/screens/Reports/cashbookreport.dart';
import 'package:chitfund/screens/Reports/collectmonthwiserepform.dart';
import 'package:chitfund/screens/Reports/daybookreport.dart';
import 'package:chitfund/screens/Reports/groupdetailedstatement.dart';
import 'package:chitfund/screens/Reports/groupdetailedstatform.dart';
import 'package:chitfund/screens/Reports/grpmonticwiserep.dart';
import 'package:chitfund/screens/Reports/ledgerbaldetform.dart';
import 'package:chitfund/screens/Reports/ledgerbaldetrep.dart';
import 'package:chitfund/screens/Reports/ledgerbalrep.dart';
import 'package:chitfund/screens/Reports/ledgerbalrepcs.dart';
import 'package:chitfund/screens/dashboard.dart';
import 'package:chitfund/screens/master/ledgerMaster.dart';
import 'package:chitfund/screens/transactions/Incentivecreation.dart';
import 'package:chitfund/screens/transactions/auctionentry.dart';
import 'package:chitfund/screens/transactions/auctiongeneration.dart';
import 'package:chitfund/screens/transactions/auctionpaymentse.dart';
import 'package:chitfund/screens/transactions/auctionsearch.dart';
import 'package:chitfund/screens/transactions/autoauctionentry.dart';
import 'package:chitfund/screens/transactions/cAppbar.dart';
import 'package:chitfund/screens/transactions/commitmententry.dart';
import 'package:chitfund/screens/transactions/commitmentsearch.dart';
import 'package:chitfund/screens/transactions/commitmentsearch1.dart';
import 'package:chitfund/screens/transactions/dailycollection.dart';
import 'package:chitfund/screens/transactions/incentivesearch.dart';
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
      home: GroupMonthlyTicketWiseReport(),
      builder: (context, child) => Home(child: child!),
    );
  }
}

