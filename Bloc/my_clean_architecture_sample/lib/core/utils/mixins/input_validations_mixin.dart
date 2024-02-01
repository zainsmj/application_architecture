mixin InputValidationsMixin {
  bool isOTPValid(String otp) => otp.length == 4;

  String? isEmailValid(String? email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regex = RegExp(pattern);

    if (email == null || email.isEmpty) {
      return "Email is required";
    } else {
      if (regex.hasMatch(email)) {
        return null;
      } else {
        return "Email is not valid";
      }
    }
  }

  String? isUsernameValid(String username) {
    if (username.isEmpty) {
      return "Username is required";
    } else {
      return null;
    }
  }

  String? isNationalityValid(String? nationality) {
    if (nationality == null || nationality.isEmpty) {
      return "Nationality is required";
    } else {
      return null;
    }
  }

  String? isNameValid(String? name) {
    if (name == null || name.isEmpty) {
      return "Name is required";
    } else {
      return null;
    }
  }

  String? isGenderValid(String? gender) {
    if (gender == null || gender.isEmpty) {
      return "Gender is required";
    } else {
      return null;
    }
  }

  String? isExpiryDateValid(String? expDate) {
    if (expDate == null || expDate.isEmpty) {
      return "Expiry Date is required";
    } else {
      return null;
    }
  }

  String? isPhoneNumberValid(String number) {
    String pattern =
        r"^((\+92)|(0092))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}$";

    RegExp regex = RegExp(pattern);

    if (number.isEmpty) {
      return "Phone Number is required";
    } else {
      if (regex.hasMatch(number)) {
        return null;
      } else {
        return "Phone Number is not valid";
      }
    }
  }

  String? isMobileNumberValid(String? number) {
    // String pattern = r"^((\+92)|(0092))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}$";
    // RegExp regex = RegExp(pattern);
    if (number == null || number.isEmpty) {
      return "Mobile Number is required";
    } else {
      // if (regex.hasMatch(number)) {
      // if (number.length == 10) {
      //   return null;
      // } else {
      //   return "Invalid mobile number";
      // }
    }
    return null;
  }

  String? isPasswordValid(String? password) {
    RegExp passwordPattern = RegExp(
      r'^(?=.*[0-9])(?=.*[A-Z])(?=.*[!@#$%^&*(),.?":{}|<>])[0-9A-Za-z!@#$%^&*(),.?":{}|<>]{8,}$',
    );

    if (password == null || password.isEmpty) {
      return "Password is required";
    } else if (passwordPattern.hasMatch(password)) {
      return null;
    } else {
      return 'Password is invalid';
    }
  }

  String? isSerialNumberValid(String? serialNumber) {
    if (serialNumber == null || serialNumber.isEmpty) {
      return "Serial Number is required";
    } else {
      return null;
    }
  }
}
