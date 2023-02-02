import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frahto/constants/constants.dart';

import '../../../../../widgets/widgets.dart';

class ORSSeven extends StatefulWidget {
  const ORSSeven({Key? key}) : super(key: key);

  @override
  State<ORSSeven> createState() => _ORSSevenState();
}

class _ORSSevenState extends State<ORSSeven> {
  var percent = 1.0;
  TextEditingController _priceController = TextEditingController();
  String? dropdownValue = 'Не выбрано';
  String? paymentType;
  String? moneyType;
  String? addedServices;
  final List<String> pt = [
    'Предоплата',
    'Постоплата',
  ];
  final List<String> mt = [
    'Тенге',
    'Доллар',
  ];
  final List<String> as = [
    'Доп1',
    'Доп2',
    'Доп3',
  ];
  bool value = true;
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBars().aborders(percent),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SWidgets().ocreate(),
                SWidgets().dropDownList('Условия оплаты', pt, paymentType, []),
                SWidgets().dropDownList('Валюта', mt, moneyType, []),
                SWidgets().inputField(context, 'Цена', _priceController, '', 'number'),
                Divider(),
                SizedBox(height: 16),
                SWidgets().dropDownList(
                    'Дополнительные услуги', as, addedServices, []),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(Assets.icn + 'lock.svg'),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Страховка',
                            style: Style().textStyle(
                                14, FontWeight.w400, Style.mainBlack),
                          ),
                        ],
                      ),
                      Switch.adaptive(
                        activeTrackColor: Style.mainPurple,
                        activeColor: Colors.white,
                        value: value,
                        onChanged: (newValue) =>
                            setState(() => value = newValue),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                SWidgets().navbarbutton(context, 'orseight', 'Продолжить', null),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
