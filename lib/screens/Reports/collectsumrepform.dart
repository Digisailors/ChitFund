import 'package:chitfund/Widget/TButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widget/Ttextfield.dart';
import '../../Widget/searchrow.dart';
import '../../constrains.dart';
import '../transactions/cAppbar.dart';

class CollectionSummariseReportForm extends StatefulWidget {
  const CollectionSummariseReportForm({Key? key}) : super(key: key);

  @override
  State<CollectionSummariseReportForm> createState() => _CollectionSummariseReportFormState();
}

class _CollectionSummariseReportFormState extends State<CollectionSummariseReportForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cAppBar(ctitle: "Collection Summarise Report", acc: "User"),
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
                    TtextField(text: "Category",w: 350),
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
