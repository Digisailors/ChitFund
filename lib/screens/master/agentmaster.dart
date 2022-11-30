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

class AgentMaster extends StatefulWidget {
  const AgentMaster({Key? key}) : super(key: key);

  @override
  State<AgentMaster> createState() => _AgentMasterState();
}

class _AgentMasterState extends State<AgentMaster> {

  String tdata = DateFormat("hh:mm:ss a").format(DateTime.now());
  String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Agent Master",
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
                        checkbox(context),
                        Text("Photo",
                        style: getTexttheme(context).caption,),
                        SizedBox(
                          width: 100,
                        ),
                        Text("Today's Date",
                          style: getTexttheme(context).bodyText2,
                        ),
                        SizedBox(
                          width: 20,
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
                        TtextField(text: "Ledger", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Occupation", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Ref Chit No.", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Op Debit", w: 210),
                        Spacer()
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
                        TtextField(text: "Ledger Group Select", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Address 1", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Address 1", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Op Credit", w: 210),
                        Spacer()
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
                        TtextField(text: "Contact Person", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Address 2", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Address 2", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Agent Code", w: 210),
                        Spacer()
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
                        TtextField(text: "C Code", w: 80),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "DLedger", w: 120),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Location", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Place", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Password", w: 210),
                        Spacer()
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
                        TtextField(text: "Code (SEL)", w: 80),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "Area Name (select)", w: 120),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Place", w: 120),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "Pincode", w: 80),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "State", w: 120),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "Pincode", w: 80),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Download", w: 210),
                        Spacer()
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
                        TtextField(text: "Relation", w: 80),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "Nominee", w: 120),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Contact No.", w: 120),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "Mobile No.", w: 80),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Contact No.", w: 120),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "Mobile No.", w: 80),
                        SizedBox(
                          width: 20,
                        ),
                        Spacer()
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
                        TtextField(text: "S/D/W/C", w: 80),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "Name", w: 120),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Bank Name", w: 210),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Bank Acc No.", w: 120),
                        SizedBox(
                          width: 10,
                        ),
                        TtextField(text: "Bank IFSC", w: 80),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Bank Branch", w: 210),
                        Spacer()
                      ],
                    ),
                    SizedBox(
                      height:15
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("D.O.B",
                        style: getTexttheme(context).bodyText2,),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "", w: 140),
                        SizedBox(
                          width: 20,
                        ),
                        TtextField(text: "Narration", w: 680)
                      ],
                    ),
                    SizedBox(
                      height: 15,
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
}
