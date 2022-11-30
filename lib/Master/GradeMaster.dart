import 'package:chitfund/Widget/appbar.dart';
import 'package:chitfund/Widget/spacers.dart';
import 'package:chitfund/Widget/textfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:intl/intl.dart';

import '../Widget/columncelltable.dart';
import '../Widget/mybutton.dart';
import '../constrains.dart';

class GradeMaster extends StatefulWidget {
  GradeMaster({Key? key}) : super(key: key);

  @override
  State<GradeMaster> createState() => _GradeMasterState();
}

class _GradeMasterState extends State<GradeMaster> {
  @override
  bool _val = false;

  bool valuefirst = false;
  bool valuesecond = false;

  TextEditingController controller = new TextEditingController();
  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('S. No', 70),
      _getTitleItemWidget('Grade Level', 240),
      _getTitleItemWidget('From', 280),
      _getTitleItemWidget('To', 280),
      _getTitleItemWidget('Incentive', 280)
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
        ColumnCellTable(text: 'hello', w: 280, h: 52),
        ColumnCellTable(text: 'hello', w: 280, h: 52),
        ColumnCellTable(text: 'hello', w: 280, h: 52),
      ],
    );
  }

  String tdata = DateFormat("hh:mm:ssa").format(DateTime.now());
  String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cAppBar(ctitle: "Grade Master"),
                    SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: azTextfld(
                          width: 600,
                          title: "Grade Level",
                          controller: controller),
                    ),
                    Row(
                      children: [
                        wspacer(),
                        azTextfld(
                            width: 180,
                            title: "Days From",
                            controller: controller),
                        azTextfld(
                            width: 200,
                            title: "Days To",
                            controller: controller),
                        azTextfld(
                            width: 180,
                            title: "Incentive",
                            controller: controller),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: azTextfld(
                          width: 600,
                          title: "Narration",
                          controller: controller),
                    ),
                    SizedBox(
                      height: 120,
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
                    hspacer(),
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
                  height: 40,
                ),
                Button(
                  onPress: () {},
                  hctitle: "New",
                  hcicon: (Icons.add_circle_sharp),
                ),
                SizedBox(
                  height: 10,
                ),
                Button(
                  onPress: () {},
                  hctitle: "Save",
                  hcicon: (Icons.file_present_rounded),
                ),
                SizedBox(
                  height: 10,
                ),
                Button(
                  onPress: () {},
                  hctitle: "Cancel",
                  hcicon: (Icons.cancel),
                ),
                SizedBox(
                  height: 10,
                ),
                Button(
                  onPress: () {},
                  hctitle: "Delete",
                  hcicon: (Icons.delete),
                ),
                SizedBox(
                  height: 10,
                ),
                Button(
                  onPress: () {},
                  hctitle: "Exit",
                  hcicon: (Icons.exit_to_app),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.fast_rewind,
                              size: 20,
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_left,
                              size: 28,
                            ),
                            Spacer(),
                            Icon(
                              Icons.play_arrow,
                              size: 20,
                            ),
                            Spacer(),
                            Icon(
                              Icons.fast_forward_sharp,
                              size: 20,
                            ),
                          ],
                        ))),
                SizedBox(
                  height: 200,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.valuesecond,
                      onChanged: (bool? value) {
                        setState(() {
                          valuesecond = value!;
                        });
                      },
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.valuesecond,
                      onChanged: (bool? value) {
                        setState(() {
                          valuesecond = value!;
                        });
                      },
                    ),
                    Flexible(
                      child: Text(
                        "Display All Records",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
