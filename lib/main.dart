import 'package:chitfund/color_schemes.dart';
import 'package:chitfund/home.dart';
import 'package:chitfund/screens/Reports/allcolleciontrepform.dart';
import 'package:chitfund/screens/Reports/allcollectionreport.dart';
import 'package:chitfund/screens/Reports/cashbookreport.dart';
import 'package:chitfund/screens/Reports/checkcollectrep.dart';
import 'package:chitfund/screens/Reports/checkcollectrepform.dart';
import 'package:chitfund/screens/Reports/chitaccclosereport.dart';
import 'package:chitfund/screens/Reports/collectmonthwiserep.dart';
import 'package:chitfund/screens/Reports/collectmonthwiserepform.dart';
import 'package:chitfund/screens/Reports/collectsumrep.dart';
import 'package:chitfund/screens/Reports/collectsumrepform.dart';
import 'package:chitfund/screens/Reports/daybookreport.dart';
import 'package:chitfund/screens/Reports/dcbalcheckreport.dart';
import 'package:chitfund/screens/Reports/gradelvlrep.dart';
import 'package:chitfund/screens/Reports/gradelvlrepform.dart';
import 'package:chitfund/screens/Reports/groupdetailedstatement.dart';
import 'package:chitfund/screens/Reports/groupdetailedstatform.dart';
import 'package:chitfund/screens/Reports/grpmonthticwisereport.dart';
import 'package:chitfund/screens/Reports/grpmonticwiserepform.dart';
import 'package:chitfund/screens/Reports/ledgerbaldetform.dart';
import 'package:chitfund/screens/Reports/ledgerbaldetrep.dart';
import 'package:chitfund/screens/Reports/ledgerbalrep.dart';
import 'package:chitfund/screens/Reports/ledgerbalrepcs.dart';
import 'package:chitfund/screens/Reports/pendingsumrep.dart';
import 'package:chitfund/screens/Reports/pendingsumrepform.dart';
import 'package:chitfund/screens/dashboard.dart';
import 'package:chitfund/screens/master/agentmaster.dart';
import 'package:chitfund/screens/master/chitmaster.dart';
import 'package:chitfund/screens/master/debotmaster.dart';
import 'package:chitfund/screens/master/ledgerMaster.dart';
import 'package:chitfund/screens/transactions/Incentivecreation.dart';
import 'package:chitfund/screens/transactions/auctionentry.dart';
import 'package:chitfund/screens/transactions/auctiongeneration.dart';
import 'package:chitfund/screens/transactions/auctionpaymentsearch.dart';
import 'package:chitfund/screens/transactions/auctionsearch.dart';
import 'package:chitfund/screens/transactions/auctionsearchform.dart';
import 'package:chitfund/screens/transactions/autoauctionentry.dart';
import 'package:chitfund/screens/transactions/cAppbar.dart';
import 'package:chitfund/screens/transactions/commitmententry.dart';
import 'package:chitfund/screens/transactions/commitmentsearchform.dart';
import 'package:chitfund/screens/transactions/commitmentsearch.dart';
import 'package:chitfund/screens/transactions/dailycollectionentry.dart';
import 'package:chitfund/screens/transactions/incentivesearch.dart';
import 'package:chitfund/screens/transactions/incentivesearchform.dart';
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
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          headline1: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 35),
          headline3: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      home: DebotMaster(),
      builder: (context, child) => Home(child: child!),
    );
  }
}

