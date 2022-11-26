import 'package:chitfund/Widget/Ttextfield.dart';
import 'package:chitfund/screens/transactions/cAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widget/TButton.dart';
import '../../Widget/searchrow.dart';
import '../../constrains.dart';

class IncentiveSearch extends StatefulWidget {
  const IncentiveSearch({Key? key}) : super(key: key);

  @override
  State<IncentiveSearch> createState() => _IncentiveSearchState();
}

class _IncentiveSearchState extends State<IncentiveSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: getColortheme(context).surfaceVariant,
        child: Column(
          children: [
            cAppBar(ctitle: "Incentive Search", acc: "User"),
            SizedBox(
              height: 30,
            ),
            SearchRow(),
            Spacer(),
            TtextField(text: "Group No", w: 300),
            SizedBox(
              height: 30,
            ),
            TtextField(text: "Group No", w: 300),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Spacer(),
                TtextField(text: "Date From", w: 140),
                SizedBox(
                  width: 20,
                ),
                TtextField(text: "To", w: 140),
                Spacer()
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Spacer(),
                TButton(text: 'Ok (F2)',icon: Icons.check,h: 35,w:110),
                SizedBox(
                  width: 40,
                ),
                TButton(text: 'Exit (Esc)',icon: Icons.exit_to_app,h: 35,w:110),
                Spacer()
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

}
