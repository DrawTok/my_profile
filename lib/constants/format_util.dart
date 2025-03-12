class FormatUtil {
  FormatUtil._();

  static String calculateYearDifference() {
    DateTime now = DateTime.now();
    DateTime targetDate = DateTime(2024, 3);
    double yearDiff = now.year - targetDate.year + (now.month - targetDate.month) / 12;
    return '${yearDiff.floor()}+';
  }
}