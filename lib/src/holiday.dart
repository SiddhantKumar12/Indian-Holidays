import 'holiday_dates.dart';

class Holiday {
  final String date;

  final String weekDay;
  final String name;
  final String nameEn;

  Holiday({
    required this.date,
    required this.weekDay,
    required this.name,
    required this.nameEn,
  });

  @override
  bool operator ==(Object other) =>
      other is Holiday && other.date == date && other.weekDay == weekDay && other.name == name && other.nameEn == nameEn;

  @override
  int get hashCode => Object.hash(
        date,
        weekDay,
        name,
        nameEn,
      );
}

/// Return [Holiday]
///
/// If [dateTime] is not holiday, it returns null.
Holiday? getHoliday(DateTime dateTime) {
  final date = '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';
  return holidays.containsKey(date) ? holidays[date] : null;
}

/// Return true if [dateTime] is holiday
bool isHoliday(DateTime dateTime) {
  return getHoliday(dateTime) != null;
}

/// Find [Holiday]s between parameters
List<Holiday> between(DateTime start, DateTime end) {
  final results = <Holiday>[];
  for (;; start = start.add(Duration(days: 1))) {
    if (start.isAfter(end)) {
      break;
    }
    final holiday = getHoliday(start);
    if (holiday != null) {
      results.add(holiday);
    }
  }
  return results;
}
