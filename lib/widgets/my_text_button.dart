import 'package:charging_system/core/translate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final Color? textColor;
  final Decoration? decoration;
  const MyTextButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.decoration,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
          height: 45,
          width: MediaQuery.sizeOf(context).width,
          decoration: decoration,
          child: Center(
            child: Text(
              title!,
              style: GoogleFonts.abel(
                  textStyle: TextStyle(
                      fontSize: 20,
                      color: textColor ?? Colors.black,
                      fontWeight: FontWeight.bold)),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
