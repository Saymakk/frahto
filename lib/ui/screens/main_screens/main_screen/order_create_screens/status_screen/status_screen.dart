import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';
import 'package:get/get.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [
              Text(
                'Водитель найден!',
                style: Style().textStyle(24, FontWeight.w700, Style.mainBlack),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Пожалуйста ознакомьтесь и подпишите договор.',
                textAlign: TextAlign.center,
                style: Style()
                    .textStyle(16, FontWeight.w400, Style.inactiveGreyText),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Style.mainPurple,
                    borderRadius: BorderRadius.circular(16)),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Пожалуйста,\n имейте в виду!',
                              style: Style()
                                  .textStyle(18, FontWeight.w700, Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              child: Text(
                                'На подписание дается 2 дня,\n чтобы не задерживать водителя.',
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: Style().textStyle(
                                    14, FontWeight.w400, Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        Assets.icn + 'error.svg',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 85,
              ),
              FilledButton(
                style: Style().buttonStyle(
                  context,
                  Style.inactiveGreyBG,
                ),
                onPressed: () {
                  // Get.toNamed('/status');
                },
                child: Container(
                  child: Text(
                    'Отменить заказ',
                    maxLines: 5,
                    style: Style().textStyle(
                      16,
                      FontWeight.w500,
                      Style.mainBlack,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              SWidgets().navbarbutton(
                  context, 'status', 'Скачать договор', 'download'),
              SizedBox(
                height: 32,
              ),
              ///Вернуть позже
              // SWidgets().navbarbutton(
              //     context, 'status', 'Подписать, используя ЭЦП', 'navbar')
            ],
          ),
        ),
      ),
    );
  }
}
