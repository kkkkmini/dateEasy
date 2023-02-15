import 'package:flutter/material.dart';
import 'package:da_easy_front/font.dart';
import 'package:date_ranger/date_ranger.dart';

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
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: DateRanger(
        activeDateBottomSpace: 10,
        runSpacing: 10,
        itemHeight: 30,
        activeDateFontSize: 15,
        horizontalPadding: 15,
        activeItemBackground: const Color(0xff6750A4),
        rangeBackground: const Color(0xffE8DEF8),
        borderColors: Colors.black,
        backgroundColor: const Color(0xffFAFCFF),
        initialRange: initialDateRange,
        onRangeChanged: (range) {
          setState(() {
            initialDateRange = range;
          });
        },
      ),
    );
  }
}
