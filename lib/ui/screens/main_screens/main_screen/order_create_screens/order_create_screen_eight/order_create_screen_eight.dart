import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';
import 'package:get/get.dart';

class ORSEight extends StatefulWidget {
  const ORSEight({Key? key}) : super(key: key);

  @override
  State<ORSEight> createState() => _ORSEightState();
}

class _ORSEightState extends State<ORSEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 112, vertical: 96),
              child: Center(
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: CircularProgressIndicator(
                    strokeWidth: 8,
                    color: Style.mainPurple,
                    backgroundColor: Style.inactiveGreyBG,
                  ),
                ),
              ),
            ),
            Text(
              'Заказ формируется!',
              style: Style().textStyle(24, FontWeight.w700, Style.mainBlack),
            ),
            SizedBox(height: 8),
            Text(
              'Пожалуйста подождите.',
              style: Style()
                  .textStyle(16, FontWeight.w400, Style.inactiveGreyText),
            ),
            Text(
              'Идет поиск автомобиля.',
              style: Style()
                  .textStyle(16, FontWeight.w400, Style.inactiveGreyText),
            ),
            SizedBox(height: 32),
            FilledButton(
              style: Style().buttonStyle(
                context,
                Style.inactiveGreyBG,
              ),
              onPressed: () {
                Get.toNamed('/status');
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
              height: 16,
            ),
            SWidgets().navbarbutton(
                context, 'status', 'На главную страницу', 'navbar')
          ],
        ),
      ),
    );
  }
}
