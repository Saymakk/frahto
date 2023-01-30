import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:get/get.dart';

class AppBars {
  AppBar abot(String title) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      shadowColor: Colors.transparent,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: Style.mainBlack,
        ),
      ),
      title: Text(
        title,
        style: Style().textStyle(
          18,
          FontWeight.w500,
          Style.mainBlack,
        ),
      ),
      centerTitle: true,
    );
  }

  AppBar aboa() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      shadowColor: Colors.transparent,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: Style.mainBlack,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: Text(
            'Изменить номер',
            style: Style().textStyle(
              18,
              FontWeight.w500,
              Style.mainPurple,
            ),
          ),
        ),
      ],
    );
  }
}


class SWidgets {
  SizedBox sb(double width, double height) {
    return SizedBox(
      width: width,
      height: height,
    );
  }

  FilledButton ubutton(
      BuildContext context, String where, String text, dynamic arguments) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Style.mainPurple),
        fixedSize: MaterialStateProperty.all(
            Size(MediaQuery.of(context).size.width, 48)),
      ),
      onPressed: () {
        Get.toNamed(
          '/$where',
          arguments: [arguments],
        );
      },
      child: Container(
        child: Text(
          text,
          maxLines: 5,
          style: Style().textStyle(
            16,
            FontWeight.w500,
            Colors.white,
          ),
        ),
      ),
    );
  }

  FilledButton inactiveubutton(
      BuildContext context,  String text) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Style.inactiveGreyBG),
        fixedSize: MaterialStateProperty.all(
            Size(MediaQuery.of(context).size.width, 48)),
      ),
      onPressed: null,
      child: Container(
        child: Text(
          text,
          maxLines: 5,
          style: Style().textStyle(
            16,
            FontWeight.w500,
            Style.inactiveGreyText,
          ),
        ),
      ),
    );
  }

  Text textButtonChild( String text){
    return Text(
      text,
      style: Style().textStyle(
        16,
        FontWeight.w500,
        Style.mainPurple,
      ),
    );
  }

}
