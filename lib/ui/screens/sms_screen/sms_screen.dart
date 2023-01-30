import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

class SMSScreen extends StatefulWidget {
  const SMSScreen({Key? key}) : super(key: key);

  @override
  State<SMSScreen> createState() => _SMSScreenState();
}

class _SMSScreenState extends State<SMSScreen> {
  bool isActive = false;

  var prev_screen = Get.arguments.first.toString();

  @override
  Widget build(BuildContext context) {
    var button_title = prev_screen == 'auth' ? 'Войти' : 'Зарегистрироваться';

    print(button_title);
    return Container(
      child: Scaffold(
        appBar: AppBars().aboa(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Подтверждение номера',
                  textAlign: TextAlign.center,
                  style:
                      Style().textStyle(24, FontWeight.w700, Style.mainBlack),
                ),
                SWidgets().sb(0, 16),
                Text(
                  'SMS с кодом подтверждения был отправлен на указанный номер',
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  style:
                      Style().textStyle(16, FontWeight.w400, Style.mainBlack),
                ),
                Text(
                  '+7(707) 857 - 76 - 66',
                  textAlign: TextAlign.center,
                  style:
                      Style().textStyle(16, FontWeight.w700, Style.mainBlack),
                ),
                SWidgets().sb(0, 32),
                Pinput(
                  onCompleted: (pin) {
                    if (pin.length == 5) {
                      setState(() {
                        isActive = !isActive;
                      });

                    }
                  },
                  length: 5,
                  focusedPinTheme:
                      Style().unitheme(Style.mainBlack, Style.mainPurple),
                  defaultPinTheme:
                      Style().unitheme(Style.mainBlack, Style.inactiveGreyBG),
                  submittedPinTheme:
                      Style().unitheme(Style.mainBlack, Style.inactiveGreyBG),
                ),
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Visibility(
                      visible: !isActive,
                      child: SWidgets().inactiveubutton(
                        context,
                        button_title,
                      ),
                    ),
                    Visibility(
                      visible: isActive,
                      child: SWidgets().ubutton(
                        context,
                        'sms',
                        button_title,
                        null,
                      ),
                    ),
                  ],
                ),
                SWidgets().sb(0, 16),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Отправить заново',
                      style: Style()
                          .textStyle(16, FontWeight.w500, Style.mainPurple),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
