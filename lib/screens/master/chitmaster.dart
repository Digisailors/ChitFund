import 'package:chitfund/screens/transactions/cAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:intl/intl.dart';

import '../../Widget/Ttextfield.dart';
import '../../Widget/columncelltable.dart';
import '../../Widget/drawer.dart';
import '../../constrains.dart';

class ChitMaster extends StatefulWidget {
  const ChitMaster({Key? key}) : super(key: key);

  @override
  State<ChitMaster> createState() => _ChitMasterState();
}

class _ChitMasterState extends State<ChitMaster> {

  String tdata = DateFormat("hh:mm:ss a").format(DateTime.now());
  String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Chit Master",
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
      body:Row(
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
                      height: 10,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Text("Today's Date",
                          style: getTexttheme(context).bodyText2,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        TtextField(text: '', w: 200,),
                        SizedBox(
                          width: 50,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Group No", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Chit Amount", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Auct Date", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Auct Time", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Auto Auction (select)", w: 180),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Group Scheme (select)", w: 180),
                        Spacer()
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "First No", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Agreement", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Comm %", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Draw %", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Regd. Office", w: 370),
                        Spacer()
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "No. of Inst", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Inst Type(select)", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Starting Date", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Maturity Date", w: 130),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Narration", w: 370),
                        Spacer()
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        checkbox(context),
                        Text("Bank Finance",
                          style: getTexttheme(context).caption,),
                        SizedBox(
                          width: 40,
                        ),
                        TtextField(text: "Postpone Inst No", w: 150),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "Postpone Inst Date", w: 150),
                        SizedBox(
                          width: 80,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      // color: Colors.blue,
                      height: Get.height * 0.25,
                      width: double.infinity,
                      child: HorizontalDataTable(
                        leftHandSideColumnWidth: 70,
                        rightHandSideColumnWidth: 1150,
                        isFixedHeader: true,
                        itemCount: 6,
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // color: Colors.blue,
                      height: Get.height * 0.25,
                      width: double.infinity,
                      child: HorizontalDataTable(
                        leftHandSideColumnWidth: 70,
                        rightHandSideColumnWidth: 1150,
                        isFixedHeader: true,
                        itemCount: 6,
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
            ),
          ),
          Container(
            width: Get.width * 0.09,
            height: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                    height :20
                ),
                SideButton(BuildContext, "New (F1)", Icons.add_circle_sharp),
                SizedBox(
                    height :20
                ),
                SideButton(BuildContext, 'Save  (F2)', Icons.file_present_rounded),
                SizedBox(
                    height :20
                ),
                SideButton(BuildContext, 'Cancel(F3)', Icons.cancel),
                SizedBox(
                    height :20
                ),
                SideButton(BuildContext, 'Delete (F6)', Icons.delete),
                SizedBox(
                    height :20
                ),
                SideButton(BuildContext, 'Exit (ESC)', Icons.cancel_outlined),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    checkbox(context),
                    Text("Search",
                      style: getTexttheme(context).caption,)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    checkbox(context),
                    Text("Display All Records",
                      style: getTexttheme(context).caption,)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Auctiontext(BuildContext context,text){
    return Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width:100,
        height: 40,
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: text,
          ),
        )
    );
  }

  Widget SideButton(BuildContext,text,icon){
    return Padding(
      padding: EdgeInsets.all(6),
      child: ElevatedButton(onPressed: (){},
          child: Row(
            children: [
              Text(text,
                  style: TextStyle(
                      fontSize: 13
                  )
              ),
              Spacer(flex: 2,),
              Icon(icon,
                size: 18,)
            ],
          )
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('S. No', 70),
      _getTitleItemWidget('Id', 80),
      _getTitleItemWidget('Ledger', 180),
      _getTitleItemWidget('Ledger Grp', 120),
      _getTitleItemWidget('Code', 120),
      _getTitleItemWidget('Auct Code', 120),
      _getTitleItemWidget('Area', 120),
      _getTitleItemWidget('Nominee', 140),
      _getTitleItemWidget('Relation', 140),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text(label, style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white,
        fontSize: 14)
        ),
      ),
      width: width,
      height: 40,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      // child: Text(widget.user.userInfo[index].name),
      width: 75,
      child: Text('1',
        style: TextStyle(color: Colors.black),),
      height: 35,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        ColumnCellTable(text: 'hello',w:80,h:35),
        ColumnCellTable(text: 'hello',w:180,h:35),
        ColumnCellTable(text: 'hello',w:120,h:35),
        ColumnCellTable(text: 'hello',w:120,h:35),
        ColumnCellTable(text: 'hello',w:120,h:35),
        ColumnCellTable(text: 'hello',w:120,h:35),
        ColumnCellTable(text: 'hello',w:140,h:35),
        ColumnCellTable(text: 'hello',w:140,h:35),
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

  //2nd table

  List<Widget> _getTitleWidget1() {
    return [
      _getTitleItemWidget1('S. No', 70),
      _getTitleItemWidget1('Id', 80),
      _getTitleItemWidget1('Ledger', 180),
      _getTitleItemWidget1('Ledger Grp', 120),
      _getTitleItemWidget1('Code', 120),
      _getTitleItemWidget1('Auct Code', 120),
      _getTitleItemWidget1('Area', 120),
      _getTitleItemWidget1('Nominee', 140),
      _getTitleItemWidget1('Relation', 140),
    ];
  }
  Widget _getTitleItemWidget1(String label, double width) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text(label, style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white)
        ),
      ),
      width: width,
      height: 40,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateFirstColumnRow1(BuildContext context, int index) {
    return Container(
      // child: Text(widget.user.userInfo[index].name),
      width: 75,
      child: Text('1',
        style: TextStyle(color: Colors.black),),
      height: 35,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }

  Widget _generateRightHandSideColumnRow1(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        ColumnCellTable(text: 'hello',w:80,h:35),
        ColumnCellTable(text: 'hello',w:180,h:35),
        ColumnCellTable(text: 'hello',w:120,h:35),
        ColumnCellTable(text: 'hello',w:120,h:35),
        ColumnCellTable(text: 'hello',w:120,h:35),
        ColumnCellTable(text: 'hello',w:120,h:35),
        ColumnCellTable(text: 'hello',w:140,h:35),
        ColumnCellTable(text: 'hello',w:140,h:35),
      ],
    );
  }
}
