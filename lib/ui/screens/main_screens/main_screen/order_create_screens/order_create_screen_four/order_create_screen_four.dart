import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';

class ORSFour extends StatefulWidget {
  const ORSFour({Key? key}) : super(key: key);

  @override
  State<ORSFour> createState() => _ORSFourState();
}

class _ORSFourState extends State<ORSFour> {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  var percent = .4;
  String date = 'Не выбрано';
  String time = 'Не выбрано';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SWidgets().ocreate(),
                    Text(
                      'Дата выгрузки',
                      style: Style().textStyle(
                        16,
                        FontWeight.w500,
                        Style.mainBlack,
                      ),
                    ),
                    SizedBox(height: 12),
                    TextField(
                        controller: dateController..text = date,
                        decoration: Style().textFieldDecoration(),
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            //get today's date
                            firstDate: DateTime(DateTime.now().year),
                            //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101),
                            builder: (BuildContext context, Widget? child) {
                              return MediaQuery(
                                data: MediaQuery.of(context).copyWith(),
                                child: child!,
                              );
                            },
                          );
                          setState(() {
                            date =
                            '${pickedDate?.day} - ${pickedDate?.month} - ${pickedDate?.year}';
                          });
                        }),
                    SizedBox(height: 16),
                    Divider(),
                    SizedBox(height: 16),
                    Text(
                      'Время выгрузки',
                      style: Style().textStyle(
                        16,
                        FontWeight.w500,
                        Style.mainBlack,
                      ),
                    ),
                    SizedBox(height: 12),
                    TextField(
                        controller: timeController..text = time,
                        //editing controller of this TextField
                        decoration: Style().textFieldDecoration(),
                        readOnly: true,
                        // when true user cannot edit text
                        onTap: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                            builder: (BuildContext context, Widget? child) {
                              return MediaQuery(
                                data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
                                child: child!,
                              );
                            },
                          );
                          setState(() {
                            time =
                            '${pickedTime?.hour} : ${pickedTime?.minute}';
                          });
                        }),
                    SizedBox(height: 16),
                    Divider(),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              SWidgets().ubutton(context, 'orsfive', 'Продолжить', null),
            ],
          ),
        ),
      ),
    );
  }
}
