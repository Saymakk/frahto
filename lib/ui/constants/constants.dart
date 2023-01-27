import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static const mainColor = Color(0xff7257FF);

 TextStyle textStyle(double fs, var fw, dynamic fc) {
  return  GoogleFonts.inter(
      fontSize: fs,
      fontWeight: fw,
      color: fc,
    );
  }
}

class Assets {
  static const img = 'assets/images/';
  static const icn = 'assets/icons/';
}
