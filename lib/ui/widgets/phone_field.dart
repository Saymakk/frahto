import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneField extends StatefulWidget {
   PhoneField( {Key? key}) : super(key: key);

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

TextEditingController controller = TextEditingController();

class _PhoneFieldState extends State<PhoneField> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // final TextEditingController controller = TextEditingController();
  String initialCountry = 'KZ';
  PhoneNumber number = PhoneNumber(isoCode: 'KZ');

  @override
  Widget build(BuildContext context) {
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
