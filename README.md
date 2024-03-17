<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This library uses holiday_in as Indian holiday dataset.

## Features

You can Use This Package to know about indian holidays

## Getting started

To use this plugin, add holiday_in as a dependency in your pubspec.yaml file.

## Usage

Use this Package for holidays

```dart
import 'package:holiday_in/holiday_in.dart' as holiday_in;
import 'package:intl/intl.dart';

final _formatter = DateFormat('yyyy-MM-dd');

void pickYourDate() {
  final republicDay = DateTime.utc(2024, 1, 26);

  try {
    final holiday = holiday_in.getHoliday(republicDay);
    print('${holiday?.date} is ${holiday?.name} in India.\n');

    final isMarineDayHoliday = holiday_in.isHoliday(republicDay);
    print('Is it holiday or not is $isMarineDayHoliday.\n');

    final start = DateTime.utc(2024, 1, 26);
    final end = DateTime.utc(2024, 4, 1);
    final holidays = holiday_in.between(start, end);
    print('Holidays between ${_formatter.format(start)} and ${_formatter.format(end)} are the followings.');
    for (final holiday in holidays) {
      print('- ${holiday.date} is ${holiday.nameEn}');
    }
  } catch (e) {
    throw Exception('There is No data Regarding this date');
  }
}
```

## Additional information

You can also Pass a list of dates like this List<String> arguments


