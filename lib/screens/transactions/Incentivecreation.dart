import 'package:chitfund/Widget/Ttextfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:intl/intl.dart';
import '../../Widget/Constants.dart' as globals;

import '../../Widget/TButton.dart';
import '../../Widget/columncelltable.dart';
import '../../constrains.dart';
import 'cAppbar.dart';

class IncentiveCreation extends StatefulWidget {
  const IncentiveCreation({Key? key}) : super(key: key);

  @override
  State<IncentiveCreation> createState() => _IncentiveCreationState();
}

class _IncentiveCreationState extends State<IncentiveCreation> {

  String tdata = DateFormat("hh:mm:ss a").format(DateTime.now());
  String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Incentive Creation",
          style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          Center(
            child: Text("Time : ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                )),
          ),
          Center(
            child: Text(tdata,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Center(
            child: Text("Date : ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                )),
          ),
          Center(
            child: Text(cdate,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Center(
            child: Text("User : ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
              ),),
          ),
          Center(
            child: Text("user",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18)
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
              child: Scaffold(
                body: Container(
                  height: Get.height,
                  width: Get.width,
                  color: getColortheme(context).surfaceVariant,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 50,
                              child: TtextField(text: "Bill No", w: 180)
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                              height: 50,
                              child: TtextField(text: "Date", w: 180)
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                              height: 50,
                              child: TtextField(text: "Agent", w: 300)
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                              height: 50,
                              child: TtextField(text: "Date", w: 180)
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                              height: 50,
                              child: TtextField(text: "Date", w: 180)
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Row(
                        children: [
                          Container(
                            // color: Colors.blue,
                            height: Get.height * 0.5,
                            width: Get.width * 0.3,
                            child: HorizontalDataTable(
                              leftHandSideColumnWidth: 50,
                              rightHandSideColumnWidth: Get.width * 0.3 ,
                              isFixedHeader: true,
                              itemCount: 5,
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
                          Spacer(),
                          Container(
                            height: Get.height * 0.5,
                            width: Get.width * 0.4,
                            child: HorizontalDataTable(
                              leftHandSideColumnWidth: 50,
                              rightHandSideColumnWidth: 700 ,
                              isFixedHeader: true,
                              itemCount: 5,
                              rowSeparatorWidget: const Divider(
                                color: Colors.black54,
                                height: 1.0,
                                thickness: 0.0,
                              ),
                              headerWidgets: _getTitleWidget1(),
                              leftSideItemBuilder: _generateFirstColumnRow1,
                              rightSideItemBuilder: _generateRightHandSideColumnRow1,
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      )
                    ],
                  ),
                ),
              ),
          ),
          Container(
            color: Colors.white,
            width: Get.width * 0.1,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TButton(text: 'New (F1)',icon: Icons.add_circle_sharp,h: 35,w:140),
                SizedBox(
                  height: 20,
                ),
                TButton(text: 'Save (F2)',icon: Icons.file_present_rounded,h: 35,w:140),
                SizedBox(
                  height: 20,
                ),
                TButton(text: 'Remove (F7)',icon: Icons.delete,h: 35,w:140),
                SizedBox(
                  height: 20,
                ),
                TButton(text: 'Exit (ESC)',icon: Icons.exit_to_app,h: 35,w:140),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: ElevatedButton(onPressed: (){},
                      child: Row(
                        children: [
                          Icon(Icons.fast_rewind,
                            size: 20,),
                          Spacer(),
                          Icon(Icons.arrow_left,
                            size: 28,),
                          Spacer(),
                          Icon(Icons.play_arrow,
                            size: 20,),
                          Spacer(),
                          Icon(Icons.fast_forward_sharp,
                            size: 20,)
                        ],
                      )
                  ),
                ),
                Spacer(),
                TButton(text: 'Delete (Entire)',icon: Icons.delete,h: 35,w:140),
                SizedBox(
                  height: 20,
                ),
                TButton(text: 'Ok ',icon: Icons.check,h: 35,w:140),
                SizedBox(
                  height: 20,
                ),
                Spacer()
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('S. No', 50),
      _getTitleItemWidget('Grade', 140),
      _getTitleItemWidget('Nos', 80),
      _getTitleItemWidget('Incentive', 100),
      _getTitleItemWidget('Amount', 120),
    ];
  }

  List<Widget> _getTitleWidget1() {
    return [
      _getTitleItemWidget('S. No', 50),
      _getTitleItemWidget('Group No', 140),
      _getTitleItemWidget('Tic No', 80),
      _getTitleItemWidget('Ledger', 170),
      _getTitleItemWidget('Auct Date', 100),
      _getTitleItemWidget('Bill Date', 100),
      _getTitleItemWidget('Day', 100),
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

  Widget _generateFirstColumnRow1(BuildContext context, int index) {
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
        ColumnCellTable(text: "hello", w : 140, h : 35),
        ColumnCellTable(text: "hello", w : 80, h : 35),
        ColumnCellTable(text: "hello", w : 120, h : 35),
        ColumnCellTable(text: "hello", w : 100, h : 35)
      ],
    );
  }

  Widget _generateRightHandSideColumnRow1(BuildContext context, int index){
    return Row(
      children: [
        ColumnCellTable(text: "hello", w : 140, h : 35),
        ColumnCellTable(text: "hello", w : 80, h : 35),
        ColumnCellTable(text: "hello", w : 170, h : 35),
        ColumnCellTable(text: "hello", w : 100, h : 35),
        ColumnCellTable(text: "hello", w : 100, h : 35),
        ColumnCellTable(text: "hello", w : 100, h : 35)
      ],
    );
  }

}
