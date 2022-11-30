import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constrains.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Spacer(),
        Icon(Icons.search),
        Text(" Search",
            style: getTexttheme(context).labelLarge),
        SizedBox(
          width: 50,
        ),
        Icon(Icons.swap_horiz),
        Text(" Swap",
          style: getTexttheme(context).labelLarge,
        ),
        SizedBox(
          width: 50,
        ),
        Icon(Icons.refresh),
        Text(" Refresh",
          style: getTexttheme(context).labelLarge,
        ),
        SizedBox(
          width: 60,
        )
      ],
    );
  }
}