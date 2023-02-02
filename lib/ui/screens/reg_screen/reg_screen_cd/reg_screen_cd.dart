import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/phone_field.dart';
import 'package:frahto/ui/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegCompanyData extends StatefulWidget {
  const RegCompanyData({Key? key}) : super(key: key);

  @override
  State<RegCompanyData> createState() => _RegCompanyDataState();
}

class _RegCompanyDataState extends State<RegCompanyData> {
  TextEditingController _binController = TextEditingController();
  TextEditingController _companyNameController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'KZ';
  PhoneNumber number = PhoneNumber(isoCode: 'KZ');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBars().abot(true, 'Регистрация'),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Данные компании',
                  style: Style().textStyle(
                    32,
                    FontWeight.w700,
                    Style.mainBlack,
                  ),
                ),
                SWidgets().sb(0, 8),
                Text(
                  'Для регистрации заполните данные компании, а также данные авторизации',
                  style: Style().textStyle(
                    16,
                    FontWeight.w400,
                    Style.mainBlack,
                  ),
                  maxLines: 5,
                ),
                SWidgets().inputField(context, 'БИН', _binController, '************', ''),
                SWidgets().inputField(context, 'Название компании',
                    _companyNameController, 'ТОО "Double.kz"', ''),
                phone_field(),
                SWidgets().sb(0, 16),
                Row(
                  children: [
                    Text(
                      'Уже есть аккаунт? ',
                      style: Style()
                          .textStyle(16, FontWeight.w400, Style.mainBlack),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        'Войти',
                        style: Style()
                            .textStyle(16, FontWeight.w400, Style.mainPurple),
                      ),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                SWidgets().navbarbutton(context, 'regud', 'Продолжить', null),
                SWidgets().sb(0, 16),
              ],
            ),
          ),
        ),
      ),
    );
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
                borderSide: BorderSide(color: Style.inactiveGreyText)),
          ),
        ],
      ),
    );
  }
}
