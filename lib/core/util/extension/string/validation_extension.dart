extension EmailValidator on String? {
  bool get isValidEmail {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this ?? "");
  }
}

extension PasswordValidator on String? {
  bool get isValidPasswordHasLowerCase {
    return RegExp(r'^(?=.*?[a-z])').hasMatch(this ?? "");
  }

  bool get isValidPasswordHasUpperCase {
    return RegExp(r'^(?=.*?[A-Z])').hasMatch(this ?? "");
  }

  bool get isValidPasswordHasDigitCase {
    return RegExp(r'^(?=.*?[0-9])').hasMatch(this ?? "");
  }

  bool get isValidPasswordHasSpecialCase {
    return RegExp(r'^(?=.*?[!@#\$.&*~])').hasMatch(this ?? "");
  }

  bool get isValidPasswordHas8CharactersCase {
    return RegExp(r'^.{8,}$').hasMatch(this ?? "");
  }

  bool get isValidPassword {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$.&*~]).{8,}$')
        .hasMatch(this ?? "");
  }
}

extension FullNameValidator on String? {
  bool get isValidFullName {
    return RegExp(r'^(?=.*?[!@#\$.&*~])').hasMatch(this ?? "");
  }
}

extension UsernameValidator on String? {
  bool get isValidUsernameHasSpecialCase {
    return !RegExp(r'^[a-z0-9_.]+$').hasMatch(this ?? "");
  }

  bool get isValidUsernameHas2CharactersCase {
    return RegExp(r'^.{2,}$').hasMatch(this ?? "");
  }
}
