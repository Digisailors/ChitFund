import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:intl/intl.dart';

import '../../Widget/columncelltable.dart';

class AutoAuctionGeneration extends StatefulWidget{

  @override
  State<AutoAuctionGeneration> createState() => _AutoAuctionGenerationState();
}

class _AutoAuctionGenerationState extends State<AutoAuctionGeneration> {

  String tdata = DateFormat("hh:mm:ss a").format(DateTime.now());
  String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Auction Entry",
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
                    backgroundColor: Colors.black12,
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Auctiontext(context, "Date"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          color: Colors.black12,
                          height: Get.height * 0.5,
                          width: double.infinity,
                          child: HorizontalDataTable(
                            leftHandSideColumnWidth: 100,
                            rightHandSideColumnWidth: 1000,
                            isFixedHeader: true,
                            itemCount: 1,
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
              )),

            //Right Side

            Container(
              width: Get.width * 0.09,
              height: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                      height :20
                  ),
                  SideButton(BuildContext, "Ok (F2)", Icons.done),
                  SizedBox(
                      height :20
                  ),
                  SideButton(BuildContext, 'Generate', Icons.add),
                  SizedBox(
                      height :20
                  ),
                  SideButton(BuildContext, 'Reset', Icons.cleaning_services_rounded),
                  SizedBox(
                      height :20
                  ),
                  SideButton(BuildContext, 'Exit  (ESC)', Icons.exit_to_app),
                  SizedBox(
                      height :20
                  ),
                ],
              ),
            )
          ],
        ),
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
      _getTitleItemWidget('S. No', 100),
      _getTitleItemWidget('Group No', 120),
      _getTitleItemWidget('Inst No', 120),
      _getTitleItemWidget('Auct Amt', 120),
      _getTitleItemWidget('Inst Amt', 120),
      _getTitleItemWidget('Divd Amt', 120),
      _getTitleItemWidget('Divd Amt', 120),
      _getTitleItemWidget('Divd Amt', 120),
      _getTitleItemWidget('Divd Amt', 150),
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
      color: Colors.black45,
      width: 120,
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
        ColumnCellTable(text:'hello', w: 120, h: 52),
        ColumnCellTable(text:'hello', w: 120, h: 52),
        ColumnCellTable(text:'hello', w: 120, h: 52),
        ColumnCellTable(text:'hello', w: 120, h: 52),
        ColumnCellTable(text:'hello', w: 120, h: 52),
        ColumnCellTable(text:'hello', w: 120, h: 52),
        ColumnCellTable(text:'hello', w: 120, h: 52),
        ColumnCellTable(text:'hello', w: 150, h: 52),
      ],
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
}