import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static const mainPurple = Color(0xff7257FF);
  static const mainBlack = Color(0xff131214);

 TextStyle textStyle(double fs, var fw, dynamic fc) {
  return  GoogleFonts.inter(
      fontSize: fs,
      fontWeight: fw,
      color: fc,
    );
  }

  ButtonStyle tbs(){
   return TextButton.styleFrom(
     minimumSize: Size.zero,
     padding: EdgeInsets.zero,
     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
   );
  }

}

class Assets {
  static const img = 'assets/images/';
  static const icn = 'assets/icons/';
}


