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

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
import 'package:holiday_in/holiday_in.dart' as holiday_in;
import 'package:intl/intl.dart';

final _formatter = DateFormat('yyyy-MM-dd');

void main(List<String> arguments) {
  final marineDay = DateTime.utc(2020, 7, 23);

  final holiday = holiday_in.getHoliday(marineDay);
  if (holiday == null) {
    throw Exception('holiday mus not be null');
  }
  print('${holiday.date} is ${holiday.nameEn} in Japan.\n');

  final isMarineDayHoliday = holiday_jp.isHoliday(marineDay);
  print(
      'The question whether Marine Day is holiday or not is $isMarineDayHoliday.\n');

  final start = DateTime.utc(2022, 1, 1);
  final end = DateTime.utc(2022, 1, 15);
  final holidays = holiday_in.between(start, end);
  print(
      'Holidays between ${_formatter.format(start)} and ${_formatter.format(end)} are the followings.');
  for (final holiday in holidays) {
    print('- ${holiday.date} is ${holiday.nameEn}');
  }
}
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
