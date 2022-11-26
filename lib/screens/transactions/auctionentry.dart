import 'package:chitfund/screens/transactions/cAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:intl/intl.dart';

import '../../Widget/columncelltable.dart';
import '../../Widget/drawer.dart';
import '../../constrains.dart';

class AuctionEntry extends StatefulWidget {
  const AuctionEntry({Key? key}) : super(key: key);

  @override
  State<AuctionEntry> createState() => _AuctionEntryState();
}

class _AuctionEntryState extends State<AuctionEntry> {

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
                        height: 60,
                      ),
                      Row(
                        children: [
                            Expanded( // <-- SEE HERE
                              child: SizedBox.shrink(),
                            ),
                          Container(
                              child: Column(
                                children: [
                                  Text('',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, "Rec No"),
                                ],
                              )),
                          Spacer(),
                  Container(
                      child: Column(
                        children: [
                          Text('',
                            style: TextStyle(
                                color: Colors.blue
                            ),),
                          Auctiontext(context, "Group No"),
                        ],
                      )),
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, "Auct Date"),
                                ],
                              )),
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, "Due Date"),
                                ],
                              )),
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('Chit Amt',
                                  style: TextStyle(
                                    color: Colors.blue
                                  ),),
                                  Auctiontext(context, "0.00"),
                                ],
                              )),
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('No Inst',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, ""),
                                ],
                              )),
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('Inst No',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, ""),
                                ],
                              )),
                          Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
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

                      SizedBox(
                        height: 30,
                      ),

                      Row(
                        children: [
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('Comm %',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, ""),
                                ],
                              )),
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('Comm Amt',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, ""),
                                ],
                              )),
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('Inst Amt',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, "0.00"),
                                ],
                              )),
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('Divd Amt',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, "0.00"),
                                ],
                              )),
                          Spacer(),
                          Container(
                              child: Column(
                                children: [
                                  Text('Divd Amtd',
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                  Auctiontext(context, ""),
                                ],
                              )),
                          Spacer(),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: Get.width * 0.09,
              height: double.infinity,
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
                  SideButton(BuildContext, 'Remove(F7)', Icons.delete),
                  SizedBox(
                      height :20
                  ),
                  SideButton(BuildContext, 'Exit  (ESC)', Icons.exit_to_app),
                  SizedBox(
                    height :20
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
      _getTitleItemWidget('Leger', 280),
      _getTitleItemWidget('T No', 80),
      _getTitleItemWidget('CCode', 100),
      _getTitleItemWidget('No Tic', 100),
      _getTitleItemWidget('Auct Tic', 200),
      _getTitleItemWidget('Clos. Bal', 150),
      _getTitleItemWidget('Clos. Bal', 150),
      _getTitleItemWidget('Vou No', 200),
      _getTitleItemWidget('Chq No', 200),
      _getTitleItemWidget('Narration', 200),
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
        ColumnCellTable(text: 'hello',w:280,h:52),
        ColumnCellTable(text: 'hello',w:80,h:52),
        ColumnCellTable(text: 'hello',w:100,h:52),
        ColumnCellTable(text: 'hello',w:100,h:52),
        ColumnCellTable(text: 'hello',w:200,h:52),
        ColumnCellTable(text: 'hello',w:150,h:52),
        ColumnCellTable(text: 'hello',w:150,h:52),
        ColumnCellTable(text: 'hello',w:200,h:52),
        ColumnCellTable(text: 'hello',w:200,h:52),
        ColumnCellTable(text: 'hello',w:200,h:52),
      ],
    );
  }
}
