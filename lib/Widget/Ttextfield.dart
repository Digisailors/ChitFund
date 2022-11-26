import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TtextField extends StatelessWidget {
  final String text;
  final double w;
  const TtextField({Key? key, required this.text,required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context){
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
          borderRadius: BorderRadius.circular(6),
        ),
        width:w,
        height: 35,
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: text,
          ),
        )
    );
  }
}
