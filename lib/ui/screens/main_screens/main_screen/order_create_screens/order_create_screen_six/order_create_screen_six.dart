import 'package:flutter/material.dart';

import '../../../../../widgets/widgets.dart';


class ORSSix extends StatefulWidget {
  const ORSSix({Key? key}) : super(key: key);

  @override
  State<ORSSix> createState() => _ORSSixState();
}

class _ORSSixState extends State<ORSSix> {
  String? dropdownValue = 'Не выбрано';
  String? selectedTransportType;
  final List<String> transportType = [
    'Грузовик',
    'Легковая',
    'Иное',
  ];
  var percent = .8;
  @override
  Widget build(BuildContext context) {
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
                        'Тип транспорта', transportType, selectedTransportType, []),
                    Divider(),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              SWidgets().ubutton(context, 'orsseven', 'Продолжить', null),
            ],
          ),
        ),
      ),
    );
  }
}
