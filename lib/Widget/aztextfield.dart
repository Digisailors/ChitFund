import 'package:flutter/material.dart';

class azTextfld extends StatelessWidget {


  const azTextfld({Key? key, required this.width, required this.title, required this.controller}) : super(key: key);
  final double width;
  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: Container(
        width: width,
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
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: title,

            ),
            controller: controller,
          ),
        ),
      ),
    );
  }
}