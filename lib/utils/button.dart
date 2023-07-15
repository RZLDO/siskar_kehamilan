import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kehamilan/utils/app_color.dart';

class CustomButtonExtended extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double width;

  final Color? color;
  const CustomButtonExtended({
    super.key,
    required this.text,
    required this.onTap,
    required this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 45,
        decoration: BoxDecoration(
            color: color ?? AppColor.mainColor,
            borderRadius: BorderRadius.circular(10)),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: onTap,
            splashColor: Colors.blueAccent.withOpacity(0.3),
            child: Center(
              // ignore: unnecessary_null_comparison
              child: Text(
                text,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}
