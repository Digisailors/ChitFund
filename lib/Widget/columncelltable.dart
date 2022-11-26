import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnCellTable extends StatelessWidget {

  String text;
  double w;
  double h;
  ColumnCellTable({Key? key,required this.text,required this.w, required this.h}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Text(widget.user.userInfo[index].phone),
      child: Center(
        child: Text(text,
          style: TextStyle(color: Colors.black),),
      ),
      width: w,
      height: h,
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
    );
  }
}
