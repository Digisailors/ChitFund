import 'package:chitfund/Widget/appbar.dart';
import 'package:chitfund/Widget/mybutton.dart';
import 'package:chitfund/Widget/searchbox.dart';
import 'package:chitfund/Widget/spacers.dart';
import 'package:chitfund/Widget/textfields.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constrains.dart';

class ChitLegderSearch extends StatefulWidget {
  ChitLegderSearch({Key? key}) : super(key: key);

  @override
  State<ChitLegderSearch> createState() => _ChitLegderSearchState();
}

class _ChitLegderSearchState extends State<ChitLegderSearch> {
  String tdata = DateFormat("hh:mm:ssa").format(DateTime.now());
  String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());

  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          cAppBar(ctitle: "Chit Ledger Search"),
          hspacer(),
          SearchRow(),
          SizedBox(
            height: 90,
          ),
          azTextfld(width: 400, title: "Name", controller: controller),
          azTextfld(width: 400, title: "Ledger", controller: controller),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              azTextfld(width: 90, title: "Grp No", controller: controller),
              azTextfld(width: 90, title: "Tic NO", controller: controller),
              azTextfld(width: 90, title: "Inst No", controller: controller),
              azTextfld(width: 90, title: "CCode", controller: controller),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              azTextfld(width: 195, title: "Area Code", controller: controller),
              azTextfld(width: 190, title: "Area", controller: controller),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              azTextfld(width: 195, title: "Agent", controller: controller),
              azTextfld(width: 190, title: "Coll Type", controller: controller),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              azTextfld(width: 195, title: "Mobile No", controller: controller),
              azTextfld(width: 190, title: "Closed", controller: controller),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              azTextfld(width: 195, title: "Location", controller: controller),
              azTextfld(width: 190, title: "Status", controller: controller),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              azTextfld(width: 195, title: "Days From", controller: controller),
              azTextfld(width: 190, title: "Days to", controller: controller),
            ],
          ),
          hspacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sButton(onPress: () {}, stitle: "Ok"),
              wspacer(),
              wspacer(),
              sButton(onPress: () {}, stitle: "Exit"),
            ],
          ),
        ],
      )),
    );
  }
}
