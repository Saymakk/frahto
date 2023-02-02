import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';

class ORSOne extends StatefulWidget {
  const ORSOne({Key? key}) : super(key: key);

  @override
  State<ORSOne> createState() => _ORSOneState();
}

class _ORSOneState extends State<ORSOne> {
  @override
  Widget build(BuildContext context) {
    var percent = .15;
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
                        'Страна погрузки', countries, selectedCountry, cities),
                    SWidgets().dropDownList(
                        'Населенный пункт', cities, selectedCountry, []),
                    SWidgets().inputField(
                        'Точный адрес погрузки', addressController, ''),
                    Divider(),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              SWidgets().navbarbutton(context, 'orstwo', 'Продолжить', null),
            ],
          ),
        ),
      ),
    );
  }
}
