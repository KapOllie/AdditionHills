extension StringExtension on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
    return nameRegExp.hasMatch(this);
  }

  bool get isValidLastName {
    final lastNameRegExp = RegExp(r'^[A-Z][a-z]+(?: [A-Z][a-z]+)*$');
    return lastNameRegExp.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegExp =
        RegExp(r"((\+63)|0)[.\- ]?9[0-9]{2}[.\- ]?[0-9]{3}[.\- ]?[0-9]{4}$");
    return phoneRegExp.hasMatch(this);
  }
}
