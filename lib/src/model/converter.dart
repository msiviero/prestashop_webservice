class JsonInt {
  static int fromJson(final String value) => int.parse(value);
  static String toJson(final int value) => value.toString();
}

class JsonDouble {
  static double fromJson(final String value) => double.parse(value);
  static String toJson(final double value) => value.toString();
}

class JsonDate {
  static DateTime fromJson(final String value) => DateTime.parse(value);
  static String toJson(final DateTime value) => value.toIso8601String();
}
