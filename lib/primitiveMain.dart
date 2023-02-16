import 'package:flutter/material.dart';

class SuperMainPage extends StatelessWidget {
  const SuperMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDDF0FF),
      appBar: AppBar(
        backgroundColor: Color(0xffDDF0FF),
      ),
    );
  }
}

class GotoMain extends StatelessWidget {
  const GotoMain({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SuperMainPage()),
        );
      },
      child: const Text('MainMain 임시버튼'),
    );
  }
}
