import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';

class RequisitesScreen extends StatefulWidget {
  const RequisitesScreen({Key? key}) : super(key: key);

  @override
  State<RequisitesScreen> createState() => _RequisitesScreenState();
}

class _RequisitesScreenState extends State<RequisitesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBars().abot(true, ''),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Реквизиты',
              style: Style().textStyle(32, FontWeight.w700, Style.mainBlack),
            ),
            SizedBox(height: 8),
            Flexible(
              child: Text(
                'Текущие реквизиты Вашей компании',
                maxLines: 3,
                style: Style().textStyle(
                  16,
                  FontWeight.w400,
                  Style.inactiveGreyText,
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
