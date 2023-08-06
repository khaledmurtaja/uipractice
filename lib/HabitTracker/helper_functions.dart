int getDaysInMonth() {
  DateTime now = DateTime.now();
  int currentMonth = now.month;
  int daysInCurrentMonth = DateTime.utc(now.year, currentMonth + 1, 0).day;
  return daysInCurrentMonth;
}
