import 'package:flutter/cupertino.dart';

class hspacer extends StatelessWidget {
  const hspacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }
}

class wspacer extends StatelessWidget {
  const wspacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
    );
  }
}
