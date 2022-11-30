import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../../Widget/TButton.dart';
import '../../Widget/columncelltable.dart';
import '../../Widget/searchrow.dart';
import '../../Widget/topwidget.dart';
import '../../constrains.dart';
import '../transactions/cAppbar.dart';

class ChitAccountCloseReport extends StatefulWidget {
  const ChitAccountCloseReport({Key? key}) : super(key: key);

  @override
  State<ChitAccountCloseReport> createState() => _ChitAccountCloseReportState();
}

class _ChitAccountCloseReportState extends State<ChitAccountCloseReport> {
  @override
  bool isChecked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cAppBar(ctitle: "Chit Account Close Report", acc: "User 1"),
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
                SizedBox(
                  height: 40,
                ),
                TopWidget(),
                SizedBox(
                  height: 50,
                ),
                Container(
                  // color: Colors.blue,
                  height: Get.height * 0.5,
                  width: double.infinity,
                  child: HorizontalDataTable(
                    leftHandSideColumnWidth: 70,
                    rightHandSideColumnWidth: 1150,
                    isFixedHeader: true,
                    itemCount: 0,
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
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('S. No', 70),
      _getTitleItemWidget('Group No', 120),
      _getTitleItemWidget('Tic No', 100),
      _getTitleItemWidget('Ledger', 330),
      _getTitleItemWidget('C Code', 150),
      _getTitleItemWidget('No Inst', 150),
      _getTitleItemWidget('Inst No', 150),
      _getTitleItemWidget('Close', 150),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text(label, style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white)
        ),
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
      child: Text('1',
        style: TextStyle(color: Colors.black),),
      height: 35,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index){
    return Row(
      children: [
        // ColumnCellTable(text: "hello", w : 100, h : 35),
        // ColumnCellTable(text: "hello", w : 80, h : 35),
        // ColumnCellTable(text: "hello", w : 150, h : 35),
        // ColumnCellTable(text: "hello", w : 60, h : 35),
        // ColumnCellTable(text: "hello", w : 100, h : 35),
        // ColumnCellTable(text: "hello", w : 80, h : 35),
        // ColumnCellTable(text: "hello", w : 120, h : 35),
        // ColumnCellTable(text: "hello", w : 120, h : 35),
        // ColumnCellTable(text: "hello", w : 100, h : 35),
        // ColumnCellTable(text: "hello", w : 100, h : 35),
        // ColumnCellTable(text: "hello", w : 100, h : 35),
        // ColumnCellTable(text: "hello", w : 100, h : 35),
      ],
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
