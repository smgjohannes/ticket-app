import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomPhoneNumberField extends StatelessWidget {
  const CustomPhoneNumberField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, -3), // shadow at the top
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3), // shadow at the bottom
          ),
        ],
      ),
      child: InternationalPhoneNumberInput(
        onInputChanged: (PhoneNumber number) {
          // Handle phone number input change
        },
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.DROPDOWN,
        ),
        ignoreBlank: false,
        autoValidateMode: AutovalidateMode.disabled,
        selectorTextStyle: const TextStyle(color: Colors.black),
        initialValue: PhoneNumber(isoCode: 'NA', dialCode: '+264'),
        textFieldController: TextEditingController(),
        formatInput: false,
        keyboardType:
            const TextInputType.numberWithOptions(signed: true, decimal: true),
        inputDecoration: const InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: 'Phone Number',
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        onSaved: (PhoneNumber number) {
          // Handle phone number save
        },
      ),
    );
  }
}
