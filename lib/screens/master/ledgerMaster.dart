// ignore_for_file: prefer_const_constructors

import 'package:chitfund/constrains.dart';
import 'package:flutter/material.dart';

class LedgerMaster extends StatelessWidget {
  const LedgerMaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            color: Colors.white,
            height: getHeight(context) * 0.1,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getWidth(context) * 0.03),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ledger Master',
                      style: getTexttheme(context).headline1,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getWidth(context) * 0.01),
                          child: RichText(
                            text: TextSpan(
                              text: 'Date : ',
                              style: getTexttheme(context).headline3,
                              children: const <TextSpan>[
                                TextSpan(text: ' world!'),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getWidth(context) * 0.01),
                          child: RichText(
                            text: TextSpan(
                              text: 'Date : ',
                              style: getTexttheme(context).headline3,
                              children: const <TextSpan>[
                                TextSpan(text: ' world!'),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getWidth(context) * 0.01),
                          child: RichText(
                            text: TextSpan(
                              text: 'Date : ',
                              style: getTexttheme(context).headline3,
                              children: const <TextSpan>[
                                TextSpan(text: ' world!'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              color: getColortheme(context).surfaceVariant,
              child: Column(children: [
                Row(
                  children: [],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
