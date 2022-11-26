
// class TappBar extends StatefulWidget {
//   const TappBar({Key? key, required this.heading, required this.acc}) : super(key: key);
//
//   final String heading;
//   final String acc;
//
//   @override
//   State<TappBar> createState() => _TappBarState(heading: heading, acc: acc);
// }
//
// class _TappBarState extends State<TappBar> {
//
//   final String heading;
//   final String acc;
//
//   _TappBarState({required this.heading, required this.acc});
//
//   String tdata = DateFormat("hh:mm:ss a").format(DateTime.now());
//   String cdate = DateFormat("dd-MM-yyyy").format(DateTime.now());
//
//   @override
//   Widget build(BuildContext context) {
//
//   return Container(
//       height: 80,
//       decoration: BoxDecoration(
//         border: Border(
//           bottom: BorderSide(width: 1,color: Colors.black),
//           // left: BorderSide(width: 1,color: Colors.black),
//           right: BorderSide(width: 1,color: Colors.black)
//         ),
//         color: Colors.blue,),
//       child: Row(
//         children: [
//           SizedBox(
//             width: 30,
//           ),
//           Text(
//             heading,
//             style: TextStyle(
//               fontSize: 32,
//               color: Colors.black,
//               fontWeight: FontWeight.bold
//             ),
//           ),
//           Spacer(
//             flex: 10,
//           ),
//           Text("Time : ",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18
//               )),
//           Text(tdata,
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18
//               )),
//           Spacer(
//             flex: 1,
//           ),
//           Text("Date : ",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18
//               )),
//           Text(cdate,
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18
//               )),
//           Spacer(
//             flex: 1,
//           ),
//           Text("User : ",
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 18
//           ),),
//           Text(acc,
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 18)
//           ),
//           Spacer(
//             flex: 1,
//           )
//         ],
//       ),
//   )


//   }
// }


import '../../constrains.dart';
import 'package:flutter/material.dart';
import  'package:intl/intl.dart';

class cAppBar extends StatefulWidget{
  @override
  
  final String ctitle;
  final String acc;
  const cAppBar({Key? key, required this.ctitle,required this.acc}) : super(key: key);
  
  
  State<cAppBar> createState() => _cAppBarState(ctitle: ctitle, acc: acc);
}

class _cAppBarState extends State<cAppBar> {
  
  final String ctitle;
  final String acc;

  _cAppBarState({required this.ctitle, required this.acc});
  
  String tdata = DateFormat("hh:mm:ss a").format(DateTime.now());
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
                    children:  <TextSpan>[
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
                    text: 'Date : ',
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
                    text: 'User : ',
                    style: getTexttheme(context).headline3,
                    children: <TextSpan>[
                      TextSpan(text: acc),
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

