import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars().abempty(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    Assets.img + 'bear.jpg',
                  ),
                  backgroundColor: Colors.black,
                  radius: 32,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Имя',
                      style: Style().textStyle(
                        24,
                        FontWeight.w700,
                        Style.mainBlack,
                      ),
                    ),
                    Text(
                      '+7(707) 777 7777',
                      style: Style().textStyle(
                        16,
                        FontWeight.w400,
                        Style.mainBlack,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            SWidgets().navbarbutton(
              context,
              'profile',
              'Редактировать',
              null,
            ),
            SizedBox(height: 16),
            SWidgets().listTileWidget(
              'requisites',
              'requisites',
              'Реквизиты',
              'note',
            ),
            SWidgets().listTileWidget(
              'orders',
              'currentorder',
              'Текущие заказы',
              '1',
            ),
            SWidgets().listTileWidget(
              'orders',
              'orderhistory',
              'История заказов',
              '0',
            ),
            SWidgets().listTileWidget(
              'messages',
              'messages',
              'Сообщения',
              'note',
            ),
            SWidgets().listTileWidget(
              'exit',
              'exit',
              'Выйти из аккаунта',
              'note',
            ),
          ],
        ),
      ),
    );
  }
}
