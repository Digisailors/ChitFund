import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../../Widget/TButton.dart';
import '../../Widget/columncelltable.dart';
import '../../Widget/searchrow.dart';
import '../../constrains.dart';
import '../transactions/cAppbar.dart';

class DayBookReport extends StatefulWidget {
  const DayBookReport({Key? key}) : super(key: key);

  @override
  State<DayBookReport> createState() => _DayBookReportState();
}

class _DayBookReportState extends State<DayBookReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cAppBar(ctitle: "Day Book Report", acc: "User 1"),
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
                Row(
                  children: [
                    Spacer(flex: 2,),
                    TButton(text: "Top", icon: Icons.arrow_circle_up, h: 35, w: 120),
                    Spacer(),
                    TButton(text: "Excel", icon: Icons.file_copy_outlined, h: 35, w: 120),
                    Spacer(),
                    TButton(text: "Preview", icon: Icons.content_paste_search_sharp, h: 35, w: 120),
                    Spacer(),
                    TButton(text: "Pdf", icon: Icons.picture_as_pdf, h: 35, w: 120),
                    Spacer(),
                    TButton(text: "Bottom", icon: Icons.arrow_circle_down_outlined, h: 35, w: 120),
                    Spacer(),
                    TButton(text: "Close (ESC)", icon: Icons.close, h: 35, w: 120),
                    Spacer(flex: 2,)
                  ],
                ),
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
      _getTitleItemWidget('Particulars', 250),
      _getTitleItemWidget('Vch. Type', 250),
      _getTitleItemWidget('V. No', 150),
      _getTitleItemWidget('Debit', 150),
      _getTitleItemWidget('Credit', 150),
      _getTitleItemWidget('Close Bal', 200),
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
        ColumnCellTable(text: "hello", w : 250, h : 35),
        ColumnCellTable(text: "hello", w : 250, h : 35),
        ColumnCellTable(text: "hello", w : 150, h : 35),
        ColumnCellTable(text: "hello", w : 150, h : 35),
        ColumnCellTable(text: "hello", w : 150, h : 35),
        ColumnCellTable(text: "hello", w : 200, h : 35),
      ],
    );
  }

}
