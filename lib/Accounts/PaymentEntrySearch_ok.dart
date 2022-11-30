import 'package:chitfund/Widget/appbar.dart';
import 'package:chitfund/Widget/searchbox.dart';
import 'package:chitfund/Widget/spacers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chitfund/Widget/table.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../Widget/mybutton.dart';

class OkPaymentEntry extends StatefulWidget {
  OkPaymentEntry({Key? key}) : super(key: key);

  @override
  State<OkPaymentEntry> createState() => _OkPaymentEntryState();
}

class _OkPaymentEntryState extends State<OkPaymentEntry> {
  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('S. No', 70),
      _getTitleItemWidget('Rec NO', 100),
      _getTitleItemWidget('Date', 150),
      _getTitleItemWidget('Group No', 150),
      _getTitleItemWidget('Inst No', 100),
      _getTitleItemWidget('Ledger', 240),
      _getTitleItemWidget('Voc No', 100),
      _getTitleItemWidget('Chq No', 100),
      _getTitleItemWidget('Narration', 150),
      _getTitleItemWidget('Amount', 100),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text(label,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ),
      width: width,
      height: 56,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      // child: Text(widget.user.userInfo[index].name),
      width: 180,
      child: Text(
        '1',
        style: TextStyle(color: Colors.black),
      ),
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 160,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].registerDate),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 150,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].terminationDate),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 120,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 180,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 160,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 130,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 120,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text(
            'hello',
            style: TextStyle(color: Colors.black),
          ),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          cAppBar(ctitle: "Payment Entry Search"),
           hspacer(),
          SearchRow(),
          SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  onPress: () {},
                  hctitle: "TOP",
                  hcicon: (Icons.arrow_upward),
                ),
                SizedBox(
                  width: 10,
                ),
                Button(
                  onPress: () {},
                  hctitle: "Excel",
                  hcicon: (Icons.newspaper_outlined),
                ),
                SizedBox(
                  width: 10,
                ),
                Button(
                  onPress: () {},
                  hctitle: "Preview",
                  hcicon: (Icons.preview_outlined),
                ),
                SizedBox(
                  width: 10,
                ),
                Button(
                  onPress: () {},
                  hctitle: "Pdf",
                  hcicon: (Icons.picture_as_pdf),
                ),
                SizedBox(
                  width: 10,
                ),
                Button(
                  onPress: () {},
                  hctitle: "Bottom",
                  hcicon: (Icons.arrow_downward),
                ),
                SizedBox(
                  width: 10,
                ),
                Button(
                  onPress: () {},
                  hctitle: "Close",
                  hcicon: (Icons.close),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Flexible(
            child: HorizontalDataTable(
              leftHandSideColumnWidth: 70,
              rightHandSideColumnWidth: 1700,
              isFixedHeader: true,
              itemCount: 10,
              rowSeparatorWidget: const Divider(
                color: Colors.black54,
                height: 1.0,
                thickness: 0.0,
              ),
              headerWidgets: _getTitleWidget(),
              leftSideItemBuilder: _generateFirstColumnRow,
              rightSideItemBuilder: _generateRightHandSideColumnRow,
            ),
          ) //
        ],
      )),
    );
  }
}
