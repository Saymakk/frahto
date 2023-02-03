import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/bottom_nav_bar.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

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

  AppBar abempty() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
      leading: Visibility(
        visible: false,
        child: Icon(Icons.arrow_back_ios),
      ),
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

  AppBar aborders(percent) {
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: LinearProgressIndicator(
            value: percent,
            color: Style.mainPurple,
            backgroundColor: Style.inactiveGreyBG,
          ),
        ),
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

  SvgPicture svg(String picture, dynamic color) {
    return SvgPicture.asset(
      '${Assets.icn}$picture.svg',
      color: color,
    );
  }

  ListTile listTileWidget(
      String where, String icon_leading, String title, String note) {
    return ListTile(
      onTap: () {
        Get.toNamed('/$where', arguments: note);
      },
      leading: SvgPicture.asset(Assets.icn + '$icon_leading.svg'),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }

  Widget orderExample(context, String from, String to, String order_id) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xfff4f6f7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    Text(
                      from,
                      style: Style().textStyle(
                        14,
                        FontWeight.w500,
                        Style.mainBlack,
                      ),
                    ),
                    Text(
                      ' -> ',
                      style: Style().textStyle(
                        14,
                        FontWeight.w500,
                        Style.mainBlack,
                      ),
                    ),
                    Text(
                      to,
                      style: Style().textStyle(
                        14,
                        FontWeight.w500,
                        Style.mainBlack,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Style.mainPurple,
                  borderRadius: BorderRadius.circular(48),
                ),
                child: TextButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return PreferredSize(
                              child: Container(),
                              preferredSize: Size(double.infinity,
                                  MediaQuery.of(context).size.height * .9));
                        });
                  },
                  child: Text(
                    'Подробнее',
                    style: Style().textStyle(
                      16,
                      FontWeight.w500,
                      Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12, left: 16),
            child: Text(
              order_id,
              style: Style().textStyle(
                14,
                FontWeight.w400,
                Style.inactiveGreyText,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget ocreate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Создание заказа',
          style: Style().textStyle(
            32,
            FontWeight.w700,
            Style.mainBlack,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Параметры погрузки',
          style: Style().textStyle(
            16,
            FontWeight.w400,
            Style.inactiveGreyText,
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget dropDownList(String title, final List<String> items,
      String? selectedValue, final List addedList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Style().textStyle(
            16,
            FontWeight.w500,
            Style.mainBlack,
          ),
        ),
        SizedBox(height: 12),
        DropdownButtonFormField2(
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Style.inactiveGreyBG),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          isExpanded: true,
          hint: const Text(
            'Не выбрано',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Style.mainBlack,
            ),
          ),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black45,
          ),
          iconSize: 30,
          buttonHeight: 60,
          buttonPadding: const EdgeInsets.only(left: 16, right: 16),
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Style.mainBlack,
                      ),
                    ),
                  ))
              .toList(),
          validator: (value) {
            if (value == null) {
              return 'Пожалуйста, выберите нужный пункт.';
            }
          },
          onChanged: (value) {
            selectedValue = value.toString();
          },
          onSaved: (value) {
            selectedValue = value.toString();
          },
        ),
        SizedBox(height: 16),
        Divider(),
      ],
    );
  }

  FilledButton navbarbutton(BuildContext context, String where,
      String button_title, dynamic arguments) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Style.mainPurple),
        fixedSize: MaterialStateProperty.all(
            Size(MediaQuery.of(context).size.width, 48)),
      ),
      onPressed: () {
        /// args = 'navbar' => Главный экран
        /// args = 'download' => Скачать файл
        arguments == 'navbar'
            ? Get.offAllNamed('/navbar')
            : Get.toNamed(
                '/$where',
                arguments: [arguments],
              );
        arguments == 'download'
            ? showToast('Файл скачивается',
                position: ToastPosition(align: Alignment.bottomCenter))
            : null;
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

  Widget inputField(BuildContext context, String title,
      TextEditingController controller, String hint, String keyboardtype) {
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
          keyboardType: keyboardtype == 'number'
              ? TextInputType.number
              : TextInputType.text,
          controller: controller,
          onChanged: (value) {
            print(value);
          },
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
