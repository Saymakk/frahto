import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frahto/constants/constants.dart';

import '../../../../../widgets/widgets.dart';

class OHScreen extends StatefulWidget {
  const OHScreen({Key? key}) : super(key: key);

  @override
  State<OHScreen> createState() => _OHScreenState();
}

class _OHScreenState extends State<OHScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 62.5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.icn + 'empty.png',
              width: 250,
              height: 250,
            ),
            Text(
              'Ваша история заказов пуста',
              style: Style().textStyle(24, FontWeight.w700, Style.mainBlack),
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            Text(
              'Нажмите на кнопку, чтобы создать новый',
              style: Style()
                  .textStyle(16, FontWeight.w400, Style.inactiveGreyText),
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: SWidgets()
                  .navbarbutton(context, 'orsone', 'Создать заказ', null),
            ),
          ],
        ),
      ),
    );
  }
}
