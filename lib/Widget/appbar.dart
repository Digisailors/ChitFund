import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constrains.dart';

class cAppBar extends StatelessWidget {
  final String ctitle;

  cAppBar({Key? key, required this.ctitle}) : super(key: key);

  String tdata = DateFormat("hh:mm:ssa").format(DateTime.now());
  String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.white,
      height: getHeight(context) * 0.1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(context) * 0.03),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            ctitle,
            style: getTexttheme(context).headline1,
          ),
          Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getWidth(context) * 0.01),
                child: RichText(
                  text: TextSpan(
                    text: 'Date : ',
                    style: getTexttheme(context).headline3,
                    children: <TextSpan>[
                      TextSpan(text: cdate),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getWidth(context) * 0.01),
                child: RichText(
                  text: TextSpan(
                    text: 'Time : ',
                    style: getTexttheme(context).headline3,
                    children: <TextSpan>[
                      TextSpan(text: tdata),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getWidth(context) * 0.01),
                child: RichText(
                  text: TextSpan(
                    text: 'Date : ',
                    style: getTexttheme(context).headline3,
                    children: <TextSpan>[
                      TextSpan(text: ' world!'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
