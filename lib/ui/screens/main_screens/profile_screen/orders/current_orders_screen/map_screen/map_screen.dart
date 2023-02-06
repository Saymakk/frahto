import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../../../widgets/widgets.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          YandexMap(
            mapType: MapType.vector,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .95,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * .35),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100)),
                                child: Divider(
                                  thickness: 5,
                                  color: Color(0xffe8ebeb),
                                  // color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 26),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Информация о заказе',
                                        textAlign: TextAlign.start,
                                        style: Style().textStyle(
                                          18,
                                          FontWeight.w500,
                                          Style.mainBlack,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'from',
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
                                            'to',
                                            style: Style().textStyle(
                                              14,
                                              FontWeight.w500,
                                              Style.mainBlack,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '#id',
                                        style: Style().textStyle(
                                          14,
                                          FontWeight.w400,
                                          Color(0xff6e7375),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Divider(
                                    color: Color(0xffe8ebeb),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15),
                            SizedBox(height: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 32,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xfff4f6f7),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Откуда',
                                          style: Style().textStyle(
                                            24,
                                            FontWeight.w700,
                                            Style.mainBlack,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          'full_address_from',
                                          style: Style().textStyle(
                                            16,
                                            FontWeight.w500,
                                            Style.mainPurple,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Text(
                                          'Куда',
                                          style: Style().textStyle(
                                            24,
                                            FontWeight.w700,
                                            Style.mainBlack,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          'full_address_to',
                                          style: Style().textStyle(
                                            16,
                                            FontWeight.w500,
                                            Style.mainPurple,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Статус заказа',
                                            style: Style().textStyle(
                                              18,
                                              FontWeight.w700,
                                              Style.mainBlack,
                                            ),
                                          ),
                                          Text(
                                            'order_status',
                                            style: Style().textStyle(
                                              16,
                                              FontWeight.w500,
                                              Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 21),
                                      SWidgets().orderDetails(
                                          'Номер заказа', 'order_number'),
                                      SWidgets().orderDetails(
                                          'Тип погрузки', 'upload_type'),
                                      SWidgets().orderDetails(
                                          'Дата погрузки', 'upload_date'),
                                      SWidgets().orderDetails(
                                          'Время погрузки', 'upload_time'),
                                      SWidgets()
                                          .orderDetails('Цена', 'price тенге'),
                                      SizedBox(height: 45),

                                      GestureDetector(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: SWidgets().inactiveubutton(
                                            context, 'Назад к заказам'),
                                      ),
                                      // SizedBox(height: 16),
                                      // SWidgets().navbarbutton(
                                      //     context,
                                      //     'рут для подписания договора',
                                      //     'Подписать договор',
                                      //     null),
                                      //
                                      // SWidgets().navbarbutton(
                                      //     context,
                                      //     'рут для Груз получен',
                                      //     'Груз получен',
                                      //     null),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * .19,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .35),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: Divider(
                          thickness: 5,
                          color: Color(0xffe8ebeb),
                          // color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 26),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Информация о заказе',
                                textAlign: TextAlign.start,
                                style: Style().textStyle(
                                  18,
                                  FontWeight.w500,
                                  Style.mainBlack,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'from',
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
                                    'to',
                                    style: Style().textStyle(
                                      14,
                                      FontWeight.w500,
                                      Style.mainBlack,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '#id',
                                style: Style().textStyle(
                                  14,
                                  FontWeight.w400,
                                  Color(0xff6e7375),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Divider(
                            color: Color(0xffe8ebeb),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
    );
  }
}
