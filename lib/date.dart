import 'package:flutter/material.dart';
import 'package:da_easy_front/font.dart';
import 'package:date_ranger/date_ranger.dart';
import 'package:intl/intl.dart';

class SameDatePicker extends StatefulWidget {
  @override
  State<SameDatePicker> createState() => _SameDatePickerState();
}

class _SameDatePickerState extends State<SameDatePicker> {
  var initialDate = DateTime.now();
  var initialDateRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: DateRanger(
        activeDateBottomSpace: 10,
        runSpacing: 13,
        itemHeight: 30,
        activeDateFontSize: 15,
        horizontalPadding: 5,
        activeItemBackground: const Color(0xff6750A4),
        rangeBackground: const Color(0xffE8DEF8),
        borderColors: Colors.black,
        backgroundColor: const Color(0xffEDF4F9),
        initialRange: initialDateRange,
        onRangeChanged: (range) {
          setState(() {
            initialDateRange = range;
            print(DateFormat.yMd().format(initialDateRange.start));
            print(DateFormat.yMd().format(initialDateRange.end));
          });
        },
      ),
    );
  }
}
