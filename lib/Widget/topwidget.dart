import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrains.dart';
import 'TButton.dart';

class TopWidget extends StatefulWidget {

  const TopWidget({Key? key}) : super(key: key);

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  @override

  bool isChecked = false;

  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        TButton(text: "Ok", icon: Icons.done, h: 35, w: 80),
        SizedBox(
          width: 40,
        ),
        checkbox(context),
        SizedBox(
          width: 10,
        ),
        Text("Select All",
          style: getTexttheme(context).caption,),
        SizedBox(
          width: 50,
        )
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
