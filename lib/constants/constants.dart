import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Style {
  ///COLORS

  static const mainPurple = Color(0xff7257FF);
  static const mainBlack = Color(0xff131214);
  static const inactiveGreyBG = Color(0xffDADDDE);
  static const inactiveGreyText = Color(0xff898D8F);

  /// STYLES

  TextStyle textStyle(double fs, var fw, dynamic fc) {
    return GoogleFonts.inter(
      fontSize: fs,
      fontWeight: fw,
      color: fc,
      height: 1.2,
    );
  }

  ButtonStyle tbs() {
    return TextButton.styleFrom(
      minimumSize: Size.zero,
      padding: EdgeInsets.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  PinTheme unitheme(dynamic textColor, dynamic borderColor) {
    return PinTheme(
      width: 56,
      height: 56,
      textStyle: Style().textStyle(16, FontWeight.w400, textColor),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }

  InputDecoration textFieldDecoration() {
    return InputDecoration(
      hintStyle: Style().textStyle(16, FontWeight.w400, Style.inactiveGreyBG),
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Style.inactiveGreyBG),
        borderRadius: BorderRadius.circular(8.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Style.inactiveGreyBG),
        borderRadius: BorderRadius.circular(8.0),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Style.inactiveGreyBG),
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusColor: Style.inactiveGreyBG,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Style.inactiveGreyBG,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  ButtonStyle buttonStyle(context, dynamic color) {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Style.inactiveGreyBG),
      fixedSize: MaterialStateProperty.all(
          Size(MediaQuery.of(context).size.width, 48)),
    );
  }
}

///ASSETS

class Assets {
  static const img = 'assets/images/';
  static const icn = 'assets/icons/';
}
