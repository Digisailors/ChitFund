import 'package:chitfund/Widget/TButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widget/Ttextfield.dart';
import '../../Widget/searchrow.dart';
import '../../constrains.dart';
import '../transactions/cAppbar.dart';

class AllCollectionReportForm extends StatefulWidget {
  const AllCollectionReportForm({Key? key}) : super(key: key);

  @override
  State<AllCollectionReportForm> createState() => _AllCollectionReportFormState();
}

class _AllCollectionReportFormState extends State<AllCollectionReportForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cAppBar(ctitle: "All Collection Report", acc: "User"),
          Container(
            color: getColortheme(context).surfaceVariant,
            height: getHeight(context)-getHeight(context) * 0.1,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                SearchRow(),
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "Bill No.",w: 130),
                    SizedBox(
                      width: 10,
                    ),
                    TtextField(text: "Agent (select)", w: 210),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "Area Code(select)",w: 170),
                    SizedBox(
                      width: 10,
                    ),
                    TtextField(text: "C Code", w: 170),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "D Ledger(select)",w: 350),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "Group No(select)",w: 170),
                    SizedBox(
                      width: 10,
                    ),
                    TtextField(text: "Tic. No", w: 80),
                    SizedBox(
                      width: 10,
                    ),
                    TtextField(text: "Inst. No", w: 80),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "Ledger(select)",w: 350),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "Date From",w: 170),
                    SizedBox(
                      width: 10,
                    ),
                    TtextField(text: "To", w: 170),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "Bill Date",w: 170),
                    SizedBox(
                      width: 10,
                    ),
                    TtextField(text: "To", w: 170),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "User (select)",w: 170),
                    SizedBox(
                      width: 10,
                    ),
                    TtextField(text: "Tb Type", w: 170),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "Device (select)",w: 170),
                    SizedBox(
                      width: 10,
                    ),
                    TtextField(text: "Bank", w: 170),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Spacer(),
                    TButton(text: "ok (F2)", icon: Icons.check, h: 35, w: 120),
                    SizedBox(
                      width: 20,
                    ),
                    TButton(text: "Exit (ESC)", icon: Icons.exit_to_app, h: 35, w: 120),
                    Spacer()
                  ],
                ),
                Spacer()
              ],
            ),
          )
        ],
      ),
    );
  }
}
