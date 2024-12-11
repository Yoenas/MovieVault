class Validators {
  /// validate email structure
  static bool email(String value) =>
      RegExp(r"^[^\s@]+@[^\s@]+\.[^\s@]+$").hasMatch(value);

  /// validate password contain UPPERCASE
  static bool passwordUpperCase(String value) =>
      RegExp(r"^(?=.*?[A-Z])").hasMatch(value);

  /// validate password contain lowercase
  static bool passwordLowerCase(String value) =>
      RegExp(r"^(?=.*?[a-z])").hasMatch(value);

  /// validate password contain number (0-9)
  static bool passwordNumber(String value) =>
      RegExp(r"^(?=.*?[0-9])").hasMatch(value);

  /// validate password contain Special Character !@#\$&*~
  static bool passwordSpecialCharacter(String value) =>
      RegExp(r"^(?=.*?[!@#\$&*~])").hasMatch(value);

  /// validate username doesn't contain ' ' space
  static bool username(String? value) =>
      value != null && value.isNotEmpty && !value.contains(' ');

  /// validate username doesn't contain UPPERCASE
  static bool usernameUpperCase(String value) =>
      RegExp(r"^(?=.*?[A-Z])").hasMatch(value);

  /// validate birthday format
  static bool birthday(String? value) => _birthdayValidator(value ?? '');

  /// validate range of age
  static bool age(String? value) => _ageValidator(value ?? '');
}

bool _birthdayValidator(String value) {
  final DateTime now = DateTime.now();

  // Parse day, month, and year
  final day = int.parse(value.substring(0, 2));
  final month = int.parse(value.substring(3, 5));
  final year = int.parse(value.substring(6, 10));

  // Ensure valid month and year range
  if (month < 1 || month > 12 || year > now.year) {
    return false;
  }

  // Determine the number of days in the given month and year
  final daysInMonth = _daysInMonth(month, year);

  // Validate the day range
  return day >= 1 && day <= daysInMonth;
}

/// Helper function to get the number of days in a month
int _daysInMonth(int month, int year) {
  // February: check for leap year
  if (month == 2) {
    return (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) ? 29 : 28;
  }

  // Months with 31 days
  const List<int> monthsWith31Days = [1, 3, 5, 7, 8, 10, 12];
  return monthsWith31Days.contains(month) ? 31 : 30;
}

bool _ageValidator(String value) {
  final DateTime now = DateTime.now();
  final DateTime minBirthday = DateTime(now.year - 8, now.month, now.day);
  final DateTime maxBirthday = DateTime(now.year - 75, now.month, now.day);

  // Parse the input date from the string (day-month-year format)
  final int day = int.parse(value.substring(0, 2));
  final int month = int.parse(value.substring(3, 5));
  final int year = int.parse(value.substring(6, 10));
  final DateTime birthDate = DateTime(year, month, day);

  // Check if the birthdate is within the valid range
  return birthDate.isBefore(minBirthday) && birthDate.isAfter(maxBirthday);
}
