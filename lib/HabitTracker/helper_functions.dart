import 'package:intl/intl.dart';

Map<String, int> getDaysWithNumbersForCurrentMonth() {
  Map<String, int> daysWithNumbers = {};
  DateFormat dateFormat = DateFormat('EEEE'); // Format for full day name

  DateTime now = DateTime.now();
  int currentYear = now.year;
  int currentMonth = now.month;

  // Get the total number of days in the current month
  int totalDaysInMonth = DateTime.utc(currentYear, currentMonth + 1, 0).day;

  for (int i = 1; i <= totalDaysInMonth; i++) {
    DateTime dateTime = DateTime.utc(currentYear, currentMonth, i);
    String dayName = dateFormat.format(dateTime).substring(0,2); //just return the first 3 chars of a day
    daysWithNumbers[dayName] = i;
  }

  return daysWithNumbers;
}
