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

  final TextEditingController phoneController = TextEditingController();
  String initialCountry = 'KZ';
  PhoneNumber number = PhoneNumber(isoCode: 'KZ');

  bool isVisible = false;

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
                SWidgets().inputField(
                    context, 'БИН', _binController, '************', ''),
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
                Visibility(
                    visible: !isVisible,
                    child: SWidgets().inactiveubutton(context, 'Продолжить')),
                Visibility(
                  visible: isVisible,
                  child:
                      SWidgets().navbarbutton(context, 'regud', 'Продолжить', {
                    'status': 'reg_cd',
                    'phone_number': phoneController.text,
                    'bin': _binController.text,
                    'company_name': _companyNameController.text
                  }),
                ),
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

              if (phoneController.text.length >= 11 &&
                  _binController.text.length != null &&
                  _companyNameController.text.length != null) {
                setState(() {
                  isVisible = true;
                });
              } else if (phoneController.text.length <= 11 ) {
                setState(() {
                  isVisible = false;
                });
              }
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
            textFieldController: phoneController,
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
