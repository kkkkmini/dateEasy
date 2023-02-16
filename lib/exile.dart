import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

// 하루동안 만든 나의 스위치... Version2 에서 다시 쓰이길
class SamgeDaySwitch extends StatefulWidget {
  const SamgeDaySwitch({super.key});

  @override
  State<SamgeDaySwitch> createState() => _SamgeDaySwitchState();
}

class _SamgeDaySwitchState extends State<SamgeDaySwitch> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 35,
      height: 20,
      toggleSize: 20,
      value: status,
      borderRadius: 30,
      padding: 2,
      activeColor: const Color(0xffFFE171),
      onToggle: (val) {
        setState(() {
          status = val;
        });
      },
    );
  }
}
