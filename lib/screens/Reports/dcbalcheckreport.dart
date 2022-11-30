import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../../Widget/TButton.dart';
import '../../Widget/Ttextfield.dart';
import '../../Widget/columncelltable.dart';
import '../../Widget/searchrow.dart';
import '../../constrains.dart';
import '../transactions/cAppbar.dart';

class DcBalanceCheckReport extends StatefulWidget {
  const DcBalanceCheckReport({Key? key}) : super(key: key);

  @override
  State<DcBalanceCheckReport> createState() => _DcBalanceCheckReportState();
}

class _DcBalanceCheckReportState extends State<DcBalanceCheckReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          cAppBar(ctitle: "DC Balance Check Report", acc: "User 1"),
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
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          ),
                        ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        width:180,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Date",
                        ),
                      )
                    ),
                    Spacer(),
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        width:240,
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Agent (select)",
                          ),
                        )
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Spacer(
                      flex : 3
                    ),
                    TButton(text: "DC Transfer Posting", icon: Icons.done, h: 35, w: 200),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {  },
                        child: Text("Clear Premium    (F12)"),
                      ),
                    ),
                    Spacer(),
                    TButton(text: "Exit", icon: Icons.close, h: 35, w: 75),
                    Spacer()
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
      _getTitleItemWidget('Group', 100),
      _getTitleItemWidget('Tic No', 80),
      _getTitleItemWidget('Customers', 240),
      _getTitleItemWidget('A Inst', 100),
      _getTitleItemWidget('Auct Date', 180),
      _getTitleItemWidget('Arrear', 150),
      _getTitleItemWidget('DC Bal', 100),
      _getTitleItemWidget('Post No', 100),
      _getTitleItemWidget('Bill Date', 100),
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
        ColumnCellTable(text: "hello", w : 100, h : 35),
        ColumnCellTable(text: "hello", w : 80, h : 35),
        ColumnCellTable(text: "hello", w : 240, h : 35),
        ColumnCellTable(text: "hello", w : 100, h : 35),
        ColumnCellTable(text: "hello", w : 180, h : 35),
        ColumnCellTable(text: "hello", w : 150, h : 35),
        ColumnCellTable(text: "hello", w : 100, h : 35),
        ColumnCellTable(text: "hello", w : 100, h : 35),
        ColumnCellTable(text: "hello", w : 100, h : 35),
      ],
    );
  }

}
