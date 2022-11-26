import 'package:chitfund/Widget/Ttextfield.dart';
import 'package:chitfund/constrains.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:intl/intl.dart';

import '../../Widget/TButton.dart';
import '../../Widget/columncelltable.dart';

class DailyCollection extends StatefulWidget {
  const DailyCollection({Key? key}) : super(key: key);

  @override
  State<DailyCollection> createState() => _DailyCollectionState();
}

class _DailyCollectionState extends State<DailyCollection> {

  String tdata = DateFormat("hh:mm:ss a").format(DateTime.now());
  String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Daily Collection Entry",
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
                  color: getColortheme(context).surfaceVariant,
                  // height: double.infinity,
                  // width: ,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 60,
                              child: TtextField(text: "Bill No.", w: 200)
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                              height: 60,
                              child: TtextField(text: "Date", w: 200)
                          ),
                          SizedBox(
                            width: 20,
                          ),Container(
                              height: 60,
                              child: TtextField(text: "Agent", w: 280)
                          ),
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
                          rightHandSideColumnWidth: 1200,
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
                ),
              )
          ),
          Container(
            width: Get.width * 0.1,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(
                    height :20
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
      _getTitleItemWidget('Leger', 150),
      _getTitleItemWidget('Tic No', 100),
      _getTitleItemWidget('CCode', 100),
      _getTitleItemWidget('Inst No', 100),
      _getTitleItemWidget('Inst Month', 100),
      _getTitleItemWidget('Commit Date', 100),
      _getTitleItemWidget('Amount', 150),
      _getTitleItemWidget('Inst Amt', 100),
      _getTitleItemWidget('Paid Date', 100),
      _getTitleItemWidget('Remarks', 100),
      _getTitleItemWidget('Narration', 100),
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
      height: 52,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        ColumnCellTable(text: 'hello',w:150,h:40),
        ColumnCellTable(text: 'hello',w:100,h:40),
        ColumnCellTable(text: 'hello',w:100,h:40),
        ColumnCellTable(text: 'hello',w:100,h:40),
        ColumnCellTable(text: 'hello',w:100,h:40),
        ColumnCellTable(text: 'hello',w:100,h:40),
        ColumnCellTable(text: 'hello',w:150,h:40),
        ColumnCellTable(text: 'hello',w:100,h:40),
        ColumnCellTable(text: 'hello',w:100,h:40),
        ColumnCellTable(text: 'hello',w:100,h:40),
        ColumnCellTable(text: 'hello',w:100,h:40),
      ],
    );
  }
}
