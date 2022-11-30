import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onPress,
    required this.hctitle,
    required this.hcicon,
  }) : super(key: key);
  final VoidCallback onPress;
  final String hctitle;
  final IconData? hcicon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.blue[800],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 12),
            Text(hctitle,
                style: GoogleFonts.quicksand(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            SizedBox(width: 20),
            Icon(
              hcicon,
              color: Colors.white,
              size: 17,
            )
          ],
        ),
      ),
    );
  }
}

class sButton extends StatelessWidget {
  const sButton({
    Key? key,
    required this.onPress,
    required this.stitle,
  }) : super(key: key);
  final VoidCallback onPress;
  final String stitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue[700],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(stitle,
                  style: GoogleFonts.varelaRound(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
