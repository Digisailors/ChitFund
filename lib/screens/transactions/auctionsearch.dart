import 'package:chitfund/Widget/Ttextfield.dart';
import 'package:chitfund/screens/transactions/cAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widget/TButton.dart';
import '../../Widget/searchrow.dart';
import '../../constrains.dart';

class AuctionSearch extends StatefulWidget {
  const AuctionSearch({Key? key}) : super(key: key);

  @override
  State<AuctionSearch> createState() => _AuctionSearchState();
}

class _AuctionSearchState extends State<AuctionSearch> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cAppBar(ctitle: "Auction Search",acc: "User 1",),
          Container(
            color: getColortheme(context).surfaceVariant,
            height: getHeight(context)-getHeight(context) * 0.1,
            width: double.infinity,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                SearchRow(),
                Spacer(),
                Column(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "Bill No. ", w: 110),
                        SizedBox(width: 10,),
                        TtextField(text: "Agent (Select)", w: 270),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "Area Code (Select)", w: 190),
                        SizedBox(width: 10,),
                        TtextField(text: "D code", w: 190),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "D Debtor (Select) ", w: 390),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "Df No ", w: 190),
                        SizedBox(width: 10,),
                        TtextField(text: "Device (Select)", w: 190),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "D Debtor (Select) ", w: 390),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "Date From ", w: 190),
                        SizedBox(width: 10,),
                        TtextField(text: "To", w: 190),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "Bill Date ", w: 190),
                        SizedBox(width: 10,),
                        TtextField(text: "To", w: 190),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "User (Select) ", w: 190),
                        SizedBox(width: 10,),
                        TtextField(text: "Db type", w: 190),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TButton(text: "Ok (F2)", icon: Icons.check, h: 35, w: 140),
                        SizedBox(width: 40,),
                        TButton(text: "Exit (ESC)", icon: Icons.transit_enterexit, h: 35, w: 140),
                        Spacer(),
                      ],
                    ),
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
