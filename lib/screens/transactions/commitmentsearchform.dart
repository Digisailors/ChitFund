import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widget/TButton.dart';
import '../../Widget/Ttextfield.dart';
import '../../Widget/searchrow.dart';
import '../../constrains.dart';
import 'cAppbar.dart';

class CommitmentSearchForm extends StatefulWidget {
  const CommitmentSearchForm({Key? key}) : super(key: key);

  @override
  State<CommitmentSearchForm> createState() => _CommitmentSearchFormState();
}

class _CommitmentSearchFormState extends State<CommitmentSearchForm> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cAppBar(ctitle: "Commitment Search",acc: "User 1",),
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
                        TtextField(text: "C code", w: 190),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "D Ledger (Select) ", w: 390),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "Group No ", w: 190),
                        SizedBox(width: 10,),
                        TtextField(text: "Tic No", w: 90),
                        SizedBox(width: 10),
                        TtextField(text: "Inst No", w: 90),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "Ledger (Select) ", w: 390),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "Paid Date ", w: 190),
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
                        TtextField(text: "Commit Date ", w: 190),
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
                        TtextField(text: "Paid (Select) ", w: 190),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TtextField(text: "Closed (Y/N) ", w: 190),
                        SizedBox(width: 10,),
                        TtextField(text: "Bank ", w: 190),
                        Spacer(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Spacer(flex: 3,),
                        checkbox(context),
                        Text("Opening",
                        style: getTexttheme(context).caption,),
                        Spacer(flex: 5)
                      ],
                    ),
                    SizedBox(
                      height:15
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

  Widget checkbox(BuildContext context){
    return Checkbox(
      checkColor: Colors.white,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
