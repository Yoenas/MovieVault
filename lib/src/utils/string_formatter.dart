import 'package:intl/intl.dart';

extension StringExtension on String {
  String toCapitalized() => (trim().isNotEmpty && length > 0)
      ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}'
      : '';

  String toTitleCase() =>
      (trim().isNotEmpty && length > 0 && trim().contains(' '))
          ? replaceAll(RegExp(' +'), ' ')
              .split(' ')
              .map((str) => str.toCapitalized())
              .join(' ')
          : toCapitalized();

  String formatDateToddMMyyy() {
    DateTime source = DateTime.parse(substring(0, 10));
    final result = DateFormat('dd MMMM yyyy').format(source);
    return result;
  }
}
