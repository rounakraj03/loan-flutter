enum ValidatorType {
  validateEmail,
  validateMobile,
  validateName,
  validateAddress,
  validateNotNull
}

class Validator {
  String? validateName(String? value) {
    const pattern = r'(^[a-zA-Z ]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value.trim())) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

  String? validateIsNotEmptyOrNull(String title, String? value) {
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return "$title is Required";
    }
    return null;
  }


  String? validateMobile(String? value) {
    const pattern = r'(^[0-9]*$)';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return "Phone number is Required";
    } else if (value.length != 10) {
      return "Phone number must be 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Phone number must be digits";
    }
    return null;
  }

  String? validateEmail(String? value) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final regExp = RegExp(pattern);
    if (value == null) {
      return null;
    }
    if (value.isEmpty) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }




}