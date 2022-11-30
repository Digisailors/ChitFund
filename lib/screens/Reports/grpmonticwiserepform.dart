import 'package:chitfund/Widget/TButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widget/Ttextfield.dart';
import '../../Widget/searchrow.dart';
import '../../constrains.dart';
import '../transactions/cAppbar.dart';

class GroupMonthlyTicketWiseReportForm extends StatefulWidget {
  const GroupMonthlyTicketWiseReportForm({Key? key}) : super(key: key);

  @override
  State<GroupMonthlyTicketWiseReportForm> createState() => _GroupMonthlyTicketWiseReportFormState();
}

class _GroupMonthlyTicketWiseReportFormState extends State<GroupMonthlyTicketWiseReportForm> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cAppBar(ctitle: "Group Monthly Ticket Wise Report", acc: "User"),
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
                    TtextField(text: "Group No (Select)",w: 230),
                    SizedBox(
                      width : 10
                    ),
                    TtextField(text: "Inst No.",w: 110),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(
                      flex : 2
                    ),
                    Text("Manual Date",
                      style: getTexttheme(context).caption,),
                    checkbox(context),
                    Spacer(
                      flex : 3
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    TtextField(text: "From",w: 170),
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
                    TtextField(text: "Area (Select)",w: 170),
                    SizedBox(
                      width: 10,
                    ),
                    TtextField(text: "Agent (Select)", w: 170),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Spacer(),
                    TButton(text: "Ok (F2)", icon: Icons.check, h: 35, w: 110),
                    SizedBox(
                      width: 40,
                    ),
                    TButton(text: "Exit (ESC)", icon: Icons.exit_to_app, h: 35, w: 110),
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
