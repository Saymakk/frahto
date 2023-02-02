import 'package:flutter/material.dart';

import '../../../../../../constants/constants.dart';
import '../../../../../widgets/widgets.dart';

class ORSThree extends StatefulWidget {
  const ORSThree({Key? key}) : super(key: key);

  @override
  State<ORSThree> createState() => _ORSThreeState();
}

class _ORSThreeState extends State<ORSThree> {
  @override
  Widget build(BuildContext context) {
    var percent = .4;
    TextEditingController addressController = TextEditingController();
    String? dropdownValue = 'Не выбрано';
    String? selectedCountry;
    final List<String> countries = [
      'Казахстан',
      'Кыргызстан',
      'Узбекистан',
    ];

    final List<String> cities_kz = [
      'Алматы',
      'Астана',
    ];
    final List<String> cities_kg = [
      'Бишкек',
      'Ош',
    ];
    final List<String> cities_uz = [
      'Ташкент',
      'Бухара',
    ];

    final List<String> cities = [
      'Алматы',
      'Астана',
      'Бишкек',
      'Ош',
      'Ташкент',
      'Бухара',
    ];
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBars().aborders(percent),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SWidgets().ocreate(),
                    SWidgets().dropDownList(
                        'Страна выгрузки', countries, selectedCountry, cities),
                    SWidgets().dropDownList(
                        'Населенный пункт', cities, selectedCountry, []),
                    SWidgets().inputField(
                        'Точный адрес выгрузки', addressController, ''),
                    Divider(),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              SWidgets().navbarbutton(context, 'orsfour', 'Продолжить', null),
            ],
          ),
        ),
      ),
    );
  }
}
