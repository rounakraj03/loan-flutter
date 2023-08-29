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



class CustomDropdown extends StatefulWidget {
  // final String? hint;
  final List<DropdownMenuItem<String>> items;
  final ValueChanged<String?>? onChanged;
  final ValidatorType? validatorType;
  // const CustomDropdown({this.hint, required this.items, this.onChanged, this.validatorType, super.key});
  const CustomDropdown({required this.items, this.onChanged, this.validatorType, super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  final buttonColor = Colors.redAccent;
  final secondaryBackgroundColor = Color(0xffececec);

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        textTheme: TextTheme(
          titleSmall: TextStyle(color: Color(0xff848484)),
        ),
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.keyboard_arrow_down_outlined, color:  Color(0xff848484)),
          hintStyle: TextStyle(color: Color(0xff848484)),
          hintText: 'Choose Option',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: buttonColor, width: 2),
            borderRadius: BorderRadius.circular(0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: secondaryBackgroundColor,
                width: 2
            ),
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        items: widget.items.map((item) {
          return DropdownMenuItem<String>(
            value: item.value,
            child: Text(
              item.value!,
              style: TextStyle(color: Color(0xff848484)),
            ),
          );
        }).toList(),
        onChanged: widget.onChanged,
      ),
    );
  }
}