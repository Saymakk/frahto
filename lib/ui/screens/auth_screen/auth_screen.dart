import 'package:flutter/material.dart';
import 'package:frahto/ui/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

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
      child: Scaffold(
        appBar: AppBarOT().abot('Авторизация'),
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
              phoneField(),
              SWidgets().sb(0, 16),
              TextButton(
                onPressed: () {
                  setState(() {
                    controller.text = '';
                  });
                },
                style: Style().tbs(),
                child: Text(
                  'Сбросить номер телефона',
                  style: Style().textStyle(
                    16,
                    FontWeight.w500,
                    Style.mainPurple,
                  ),
                ),
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
                    onPressed: () {},
                    style: Style().tbs(),
                    child: Text(
                      'Зарегистрироваться',
                      style: Style().textStyle(
                        16,
                        FontWeight.w400,
                        Style.mainPurple,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              SWidgets().ubutton(context, AuthScreen(), 'Продолжить'),
            ],
          ),
        ),
      ),
    );
  }

  Widget phoneField() {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber number) {
              print(number.phoneNumber);
            },
            onInputValidated: (bool value) {
              print(value);
            },
            selectorConfig: SelectorConfig(
                trailingSpace: false,
                selectorType: PhoneInputSelectorType.DIALOG,
                setSelectorButtonAsPrefixIcon: true,
                leadingPadding: 16),
            initialValue: number,
            textFieldController: controller,
            // formatInput: true,
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
