import 'package:flutter/material.dart';
import 'package:frahto/ui/widgets/widgets.dart';

class ORSFive extends StatefulWidget {
  const ORSFive({Key? key}) : super(key: key);

  @override
  State<ORSFive> createState() => _ORSFiveState();
}

class _ORSFiveState extends State<ORSFive> {
  @override
  Widget build(BuildContext context) {
    var percent = .69;
    TextEditingController addressController = TextEditingController();
    String? natureOfCargo = 'Не выбрано';
    String? natureOfCargoByProps = 'Не выбрано';
    String? packingType = 'Не выбрано';
    String? dimW = 'Не выбрано';
    String? dimH = 'Не выбрано';
    String? dimL = 'Не выбрано';
    String? unloadingType = 'Не выбрано';
    String? uploadingType = 'Не выбрано';
    String? loadingCond = 'Не выбрано';
    String? selectedCountry;

    final List<String> noc = [
      'Стекло',
    ];

    final List<String> nocbp = [
      'Хрупкий',
    ];
    final List<String> pt = [
      'Целлофан',
    ];
    final List<String> dw = [
      '120',
    ];

    final List<String> dh = [
      '210',
    ];

    final List<String> dl = [
      '102',
    ];

    final List<String> unt = [
      'Задний',
    ];

    final List<String> upt = [
      'Сбоку',
    ];

    final List<String> lc = [
      'Спереди',
    ];

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
                SWidgets()
                    .dropDownList('Характер груза', noc, natureOfCargo, []),
                SWidgets().dropDownList('Характер груза по свойствам',
                    nocbp, natureOfCargoByProps, []),
                SWidgets()
                    .dropDownList('Тип упаковки', pt, packingType, []),
                SWidgets().dropDownList('Габариты (Ширина)', dw, dimW, []),
                SWidgets().dropDownList('Габариты (Высота)', dh, dimH, []),
                SWidgets().dropDownList('Габариты (Длина)', dl, dimL, []),
                SWidgets()
                    .dropDownList('Вид выгрузки', unt, unloadingType, []),
                SWidgets()
                    .dropDownList('Вид погрузки', upt, uploadingType, []),
                SWidgets()
                    .dropDownList('Условия погрузки', lc, loadingCond, []),
                SWidgets().ubutton(context, 'orssix', 'Продолжить', null),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
