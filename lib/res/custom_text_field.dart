import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_loan/res/validator.dart';

class CustomTextField extends StatefulWidget {

  final TextEditingController controller;
  final String? hint;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? textInputFormatter;
  final ValidatorType? validatorType;
  const CustomTextField({required this.controller, this.textInputFormatter, this.hint, this.prefixIcon, this.validatorType, super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final buttonColor = Colors.redAccent;

  final secondaryBackgroundColor = Color(0xffececec);
  final cursorColor = Color(0xff6666666);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cursorColor,
      controller: widget.controller,
      inputFormatters: widget.textInputFormatter,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.black38),
        prefixIcon: widget.prefixIcon,
        hintText: widget.hint,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: buttonColor,
              width: 2
          ),
          borderRadius: BorderRadius.circular(0)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: secondaryBackgroundColor,
              width: 2
          ),
          borderRadius: BorderRadius.circular(0)
        ),
      ),
      validator: (String? value) {
        var validatorType = widget.validatorType;
        Validator validator = Validator();
        switch (validatorType) {
          case ValidatorType.validateName:
            return validator.validateName(value);
          case ValidatorType.validateAddress:
            return validator.validateIsNotEmptyOrNull("Address",value);
          case ValidatorType.validateMobile:
            return validator.validateMobile(value);
          case ValidatorType.validateEmail:
            return validator.validateEmail(value);
          default:
            return null;
        }

      },

    );
  }
}

class CustomTextField2 extends StatefulWidget {

  final TextEditingController controller;
  final String? hint;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? textInputFormatter;
  final ValidatorType? validatorType;
  const CustomTextField2({required this.controller, this.textInputFormatter, this.hint, this.prefixIcon, this.validatorType, super.key});

  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  final buttonColor = Colors.deepPurple;

  final secondaryBackgroundColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      inputFormatters: widget.textInputFormatter,
        decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.black38),
    prefixIcon: widget.prefixIcon,
    hintText: widget.hint),
      validator: (String? value) {
        var validatorType = widget.validatorType;
        Validator validator = Validator();
        switch (validatorType) {
          case ValidatorType.validateName:
            return validator.validateName(value);
          case ValidatorType.validateAddress:
            return validator.validateIsNotEmptyOrNull("Address",value);
          case ValidatorType.validateMobile:
            return validator.validateMobile(value);
          case ValidatorType.validateEmail:
            return validator.validateEmail(value);
          default:
            return null;
        }

      },

    );
  }
}
