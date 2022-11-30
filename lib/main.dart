import 'package:chitfund/Accounts/BankPaymentEntry.dart';
import 'package:chitfund/Accounts/BankPaymentEntrySearch_ok.dart';
import 'package:chitfund/Accounts/BankReceiptEntry.dart';
import 'package:chitfund/Accounts/CreditNoteEntry.dart';
import 'package:chitfund/Accounts/PaymentEntrySearch.dart';
import 'package:chitfund/Master/AreaMaster.dart';
import 'package:chitfund/Master/ChitLedgerSearch_ok.dart';
import 'package:chitfund/Master/ChitLegderSearch.dart';
import 'package:chitfund/Master/GradeMaster.dart';
import 'package:chitfund/Master/LedgerGroupMaster.dart';
import 'package:chitfund/color_schemes.dart';
import 'package:chitfund/home.dart';
import 'package:chitfund/screens/dashboard.dart';
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
      home: CreditNoteEntry(),
      builder: (context, child) => Home(child: child!),
    );
  }
}
