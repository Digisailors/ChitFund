import 'package:chitfund/Widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../Widget/columncelltable.dart';
import '../Widget/mybutton.dart';

class OKcgitledgersearch extends StatefulWidget {
  OKcgitledgersearch({Key? key}) : super(key: key);

  @override
  State<OKcgitledgersearch> createState() => _OKcgitledgersearchState();
}

class _OKcgitledgersearchState extends State<OKcgitledgersearch> {
  @override
  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('S. No', 70),
      _getTitleItemWidget('Rec No', 150),
      _getTitleItemWidget('Date', 80),
      _getTitleItemWidget('Agent', 100),
      _getTitleItemWidget('Start Date', 100),
      _getTitleItemWidget('Due Date', 200),
      _getTitleItemWidget('Last Call', 150),
      _getTitleItemWidget('Call Amt', 150),
      _getTitleItemWidget('Pending', 100),
      _getTitleItemWidget('Balance', 200),
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
      width: 80,
      child: Center(
        child: Text(
          '1',
          style: TextStyle(color: Colors.black),
        ),
      ),
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        ColumnCellTable(text: 'hello', w: 240, h: 52),
        ColumnCellTable(text: 'hello', w: 80, h: 52),
        ColumnCellTable(text: 'hello', w: 100, h: 52),
        ColumnCellTable(text: 'hello', w: 100, h: 52),
        ColumnCellTable(text: 'hello', w: 150, h: 52),
        ColumnCellTable(text: 'hello', w: 200, h: 52),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          cAppBar(ctitle: "Chit Ledger Search"),
          SizedBox(
            height: 50,
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Button(
                    onPress: () {},
                    hctitle: "TOP",
                    hcicon: (Icons.arrow_upward),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Button(
                    onPress: () {},
                    hctitle: "Excel",
                    hcicon: (Icons.newspaper_outlined),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Button(
                    onPress: () {},
                    hctitle: "Preview",
                    hcicon: (Icons.preview_outlined),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Button(
                    onPress: () {},
                    hctitle: "Pdf",
                    hcicon: (Icons.picture_as_pdf),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Button(
                    onPress: () {},
                    hctitle: "Bottom",
                    hcicon: (Icons.arrow_downward),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Button(
                    onPress: () {},
                    hctitle: "Close",
                    hcicon: (Icons.close),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Flexible(
            child: Container(
              // color: Colors.blue,
              height: Get.height * 0.5,
              width: double.infinity,
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
            ),
          ),
        ],
      )),
    );
  }
}
