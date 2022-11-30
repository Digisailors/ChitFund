import 'package:chitfund/Widget/appbar.dart';
import 'package:chitfund/Widget/mybutton.dart';
import 'package:chitfund/Widget/searchbox.dart';
import 'package:chitfund/Widget/spacers.dart';
import 'package:chitfund/Widget/textfields.dart';
import 'package:flutter/material.dart';

class JournalEntrySearch extends StatefulWidget {
  JournalEntrySearch({Key? key}) : super(key: key);

  @override
  State<JournalEntrySearch> createState() => _JournalEntrySearchState();
}

class _JournalEntrySearchState extends State<JournalEntrySearch> {
  bool _val = false;

  bool valuefirst = false;
  bool valuesecond = false;
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          cAppBar(ctitle: "Journal Entry Search"),
          SearchRow(),
          SizedBox(
            height: 150,
          ),
          azTextfld(width: 350, title: "Ledger", controller: controller),
          azTextfld(width: 350, title: "Ledger Group", controller: controller),
          azTextfld(width: 350, title: "Narration", controller: controller),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              azTextfld(width: 260, title: "Display", controller: controller),
              wspacer(),
              Text(
                "open bal",
                style: TextStyle(color: Colors.black45),
              ),
              Checkbox(
                value: this.valuesecond,
                onChanged: (bool? value) {
                  setState(() {
                    valuesecond = value!;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              azTextfld(width: 170, title: "Group No", controller: controller),
              azTextfld(width: 170, title: "Inst No", controller: controller),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sButton(onPress: () {}, stitle: "Ok"),
              sButton(onPress: () {}, stitle: "Exit"),
            ],
          ),
        ],
      )),
    );
  }
}
