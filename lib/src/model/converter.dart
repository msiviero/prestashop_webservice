int stringToInt(final String value) => int.parse(value);

DateTime stringToDate(final String value) => DateTime.parse(value);

String dateToString(final DateTime value) => value.toIso8601String();

double stringToDouble(final String value) => double.parse(value);
