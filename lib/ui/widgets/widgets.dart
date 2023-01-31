import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/bottom_nav_bar.dart';
import 'package:get/get.dart';

class AppBars {
  AppBar abot(bool back, String title) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      shadowColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          back == true ? Get.back() : Get.offAndToNamed('/');
        },
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

  AppBar aborders() {
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
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 20),
        child: Text('Место для прогресс бара'),
      ),
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

  FilledButton ubutton(BuildContext context, String where, String button_title,
      dynamic arguments) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Style.mainPurple),
        fixedSize: MaterialStateProperty.all(
            Size(MediaQuery.of(context).size.width, 48)),
      ),
      onPressed: () {
        arguments == 'navbar'
            ? Get.offAllNamed('/navbar')
            : Get.toNamed(
                '/$where',
                arguments: [arguments],
              );
      },
      child: Container(
        child: Text(
          button_title,
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

  FilledButton inactiveubutton(BuildContext context, String text) {
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

  Text textButtonChild(String text) {
    return Text(
      text,
      style: Style().textStyle(
        16,
        FontWeight.w500,
        Style.mainPurple,
      ),
    );
  }

  Widget inputField(
      String title, TextEditingController controller, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SWidgets().sb(0, 16),
        Text(
          title,
          style: Style().textStyle(
            16,
            FontWeight.w500,
            Style.mainBlack,
          ),
        ),
        SWidgets().sb(0, 12),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle:
                Style().textStyle(16, FontWeight.w400, Style.inactiveGreyBG),
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
          ),
        ),
        SWidgets().sb(0, 16),
      ],
    );
  }
}
