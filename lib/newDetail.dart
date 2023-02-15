import 'package:flutter/material.dart';
import 'package:da_easy_front/font.dart';
import 'package:da_easy_front/newDate.dart';
import 'package:da_easy_front/main.dart';

class NewDetailPage extends StatefulWidget {
  const NewDetailPage({super.key});

  @override
  State<NewDetailPage> createState() => _NewDetailPageState();
}

class _NewDetailPageState extends State<NewDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEBF3),
      appBar: AppBar(
        leading: const AppBarBackButtom(),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xffDFEBF3),
        title: const AppBarText(),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text(
              '저장',
              style: Subtitle2_2,
            ),
          ),
        ],
      ),
      body: Column(
        children: const [
          TextDateTitle(),
          Category(),
        ],
      ),
    );
  }
}

class AppBarText extends StatelessWidget {
  const AppBarText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "새로운 일정",
      style: Subtitle2_1,
    );
  }
}

class AppBarBackButtom extends StatelessWidget {
  const AppBarBackButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DaHomePage(),
            ),
          );
        },
        child: const Text(
          '취소',
          style: Subtitle2_3,
        ),
      ),
    );
  }
}

class TextDateTitle extends StatelessWidget {
  const TextDateTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(28, 20, 28, 8),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: body1_4,
                    hintText: '일정 제목',
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xffFAFCFF)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(28, 0, 28, 8),
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: body1_4,
                    hintText: '장소',
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xffFAFCFF)),
              ),
            )
          ],
        )
      ],
    );
  }
}

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: SizedBox(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: 380,
            height: 125,
            child: Card(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 16, 0, 0),
                child: Text(
                  '카테고리',
                  style: body1_4,
                ),
              ),
              elevation: 0,
              color: Color(0xffFAFCFF),
            ),
          ),
        ),
      ),
    );
  }
}
