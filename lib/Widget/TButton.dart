import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TButton extends StatelessWidget {

  final String text;
  final icon;
  final double h;
  final double w;

  const TButton({Key? key,
    required this.text,
    required this.icon,
    required this.h,
    required this.w
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
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
}
