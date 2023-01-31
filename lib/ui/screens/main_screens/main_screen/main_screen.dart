import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xfff4f6f7),
        // appBar: AppBar(leading: null, backgroundColor: Colors.transparent, elevation: 0,),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      'Крупнейший агрегатор перевозчиков',
                      maxLines: 5,
                      style: Style().textStyle(
                        32,
                        FontWeight.w700,
                        Style.mainBlack,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'с полной ответственностью за груз и перевозку',
                      maxLines: 5,
                      style: Style().textStyle(
                        16,
                        FontWeight.w400,
                        Style.mainBlack,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Выберите направление',
                      style: Style()
                          .textStyle(18, FontWeight.w500, Style.mainBlack),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Алматы',
                                style: Style().textStyle(
                                    18, FontWeight.w700, Style.mainBlack),
                              ),
                              Text(
                                'Откуда',
                                style: Style().textStyle(
                                    16, FontWeight.w400, Style.mainBlack),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Москва',
                                style: Style().textStyle(
                                    18, FontWeight.w700, Style.mainBlack),
                              ),
                              Text(
                                'Куда',
                                style: Style().textStyle(
                                    16, FontWeight.w400, Style.mainBlack),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Поиск исполнителя',
                      style: Style().textStyle(
                        24,
                        FontWeight.w700,
                        Style.mainBlack,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Водитель будет предложен после создания заказа',
                      style: Style().textStyle(
                        16,
                        FontWeight.w400,
                        Style.inactiveGreyText,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 90.0),
                      child: SWidgets().ubutton(context, 'order_create_page_one', 'Создать заказ', null),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
