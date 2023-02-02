import 'package:flutter/material.dart';
import 'package:frahto/constants/constants.dart';
import 'package:frahto/ui/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegUserData extends StatefulWidget {
  const RegUserData({Key? key}) : super(key: key);

  @override
  State<RegUserData> createState() => _RegUserDataState();
}

class _RegUserDataState extends State<RegUserData> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'KZ';
  PhoneNumber number = PhoneNumber(isoCode: 'KZ');
  TextEditingController _iinController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),

        child: Scaffold(
            resizeToAvoidBottomInset: false,
          appBar: AppBars().abot(true, 'Регистрация'),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Данные контактного лица',
                      maxLines: 4,
                      style:
                          Style().textStyle(24, FontWeight.w700, Style.mainBlack),
                    ),
                  ],
                ),
                SWidgets().inputField('ИИН', _iinController, '************'),
                SWidgets().inputField('Имя', _nameController, 'Имя'),
                SWidgets().inputField('Фамилия', _lastnameController, 'Фамилия'),
                phone_field(),
                Row(
                  children: [
                    Text(
                      'Уже есть аккаунт? ',
                      style: Style()
                          .textStyle(16, FontWeight.w400, Style.mainBlack),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offAndToNamed('/auth', arguments: false);
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
                SWidgets().navbarbutton(context, 'sms', 'Продолжить', null),
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
                borderSide: BorderSide(color: Style.inactiveGreyBG)),
          ),
        ],
      ),
    );
  }

}
