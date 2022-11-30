import 'package:flutter/material.dart';

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
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text('hello',
            style: TextStyle(color: Colors.black),),
          width: 280,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].registerDate),
          child: Text('hello',
            style: TextStyle(color: Colors.black),),
          width: 80,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].terminationDate),
          child: Text('hello',
          style: TextStyle(color: Colors.black),),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text('hello',
            style: TextStyle(color: Colors.black),),
          width: 100,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text('hello',
            style: TextStyle(color: Colors.black),),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text('hello',
            style: TextStyle(color: Colors.black),),
          width: 150,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text('hello',
            style: TextStyle(color: Colors.black),),
          width: 150,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text('hello',
            style: TextStyle(color: Colors.black),),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text('hello',
            style: TextStyle(color: Colors.black),),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
        Container(
          // child: Text(widget.user.userInfo[index].phone),
          child: Text('hello',
            style: TextStyle(color: Colors.black),),
          width: 200,
          height: 52,
          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
        ),
      ],
    );
  }