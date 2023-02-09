import 'package:flutter/material.dart';
import 'package:frahto/data/api_repository/client_getOtp.dart';
import 'package:frahto/data/api_repository/client_register.dart';
import 'package:frahto/ui/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../constants/constants.dart';
import '../../../data/api_repository/client_auth.dart';
import '../../widgets/phone_field.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'KZ';
  PhoneNumber number = PhoneNumber(isoCode: 'KZ');

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBars().abot(true, 'Авторизация'),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Добро пожаловать',
                  style: Style().textStyle(
                    32,
                    FontWeight.w700,
                    Style.mainBlack,
                  ),
                ),
                SWidgets().sb(0, 8),
                Text(
                  'Введите Ваш номер телефона',
                  style: Style().textStyle(
                    16,
                    FontWeight.w400,
                    Style.mainBlack,
                  ),
                ),
                SWidgets().sb(0, 28),
                phone_field(),
                SWidgets().sb(0, 16),
                TextButton(
                  onPressed: () {
                    _clear();
                  },
                  style: Style().tbs(),
                  child: SWidgets().textButtonChild('Сбросить номер телефона'),
                ),
                SWidgets().sb(0, 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Нет аккаунта? ',
                        style: Style().textStyle(
                          16,
                          FontWeight.w400,
                          Style.mainBlack,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () async {

                        // clientRegister();
                        // clientLogin();
                        // clientGetOtp(controller.text);
                        Get.toNamed(
                          '/regcd',
                          arguments: ['reg'],
                        );
                      },
                      style: Style().tbs(),
                      child: SWidgets().textButtonChild('Зарегистрироваться'),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                SWidgets().navbarbutton(context, 'sms', 'Продолжить', 'auth'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _clear() {
    setState(() {
      controller.text = '';
    });
  }

  Widget phone_field() {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber number) {
              print(number.phoneNumber);
              print(number.isoCode);
            },
            // onInputValidated: (bool value) {
            //   print(value);
            // },
            selectorConfig: SelectorConfig(
              trailingSpace: false,
              selectorType: PhoneInputSelectorType.DIALOG,
              setSelectorButtonAsPrefixIcon: true,
              leadingPadding: 16,
            ),
            initialValue: number,
            textFieldController: controller,
            formatInput: true,
            hintText: 'Номер телефона',
            keyboardType: TextInputType.number,
            inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
