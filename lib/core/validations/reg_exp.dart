class AppRegExp {
  AppRegExp._();
  static RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9]{3,}$');
  static RegExp passwordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$');
  static RegExp emailRegex = RegExp(
    r"^(?=.{1,254}$)(?=.{1,64}@)[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@"
    r"(?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61}[A-Za-z0-9])?\.)+[A-Za-z]{2,}$",
    caseSensitive: false,
    multiLine: false,
  );
  static RegExp stringRegExp = RegExp(r'^[A-Za-z0-9\u0621-\u064A\s]+$');
  static RegExp cityRegExp = RegExp(r'^[a-zA-Z ]+$');
  static RegExp streetRegExp = RegExp(r'^\d+ [a-zA-Z]+\w*( [a-zA-Z]+\w*)*$');
  static final RegExp numberRegExp = RegExp(r'^\d+$');
  static final RegExp zipCodeRegExp = RegExp(r'^\d{5}(?:[-\s]\d{4})?$');
  static final RegExp phoneRegExp = RegExp(r'^\d{10}$');
  static final RegExp expirationCodeRegex = RegExp(r'^\d{2}/\d{2}$');
  static final RegExp securityCodeRegex = RegExp(r'^\d{3,4}$');
  static final RegExp cardNumberRegExp = RegExp(r'^[0-9]{16}$');
}
