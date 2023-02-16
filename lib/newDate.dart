import 'package:da_easy_front/font.dart';
import 'package:da_easy_front/newDetail.dart';
import 'package:flutter/material.dart';
import 'package:da_easy_front/main.dart';
import 'package:da_easy_front/date.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

class NewDatePage extends StatefulWidget {
  const NewDatePage({super.key});

  @override
  State<NewDatePage> createState() => _NewDatePageState();
}

class _NewDatePageState extends State<NewDatePage> {
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
            onPressed: () {
              PanaraConfirmDialog.showAnimatedGrow(
                context,
                title: "확정하시겠습니까?",
                message: "확정하시면 선택한 \n 일정들이 정리됩니다.",
                confirmButtonText: "확인",
                cancelButtonText: "취소",
                onTapCancel: () {
                  Navigator.pop(context);
                },
                onTapConfirm: () {
                  Navigator.pop(context);
                },
                panaraDialogType: PanaraDialogType.error,
                noImage: true,
              );
            },
            child: const Text(
              '저장',
              style: Subtitle2_2,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TextDateTitle(),
            const SameDate(),
          ],
        ),
      ),
    );
  }
}

class AppBarText extends StatelessWidget {
  const AppBarText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "새로운 데이트",
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
            MaterialPageRoute(builder: (context) => const DaHomePage()),
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
                    hintText: '데이트 제목',
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
                    hintText: '데이트 장소',
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

class SameDate extends StatelessWidget {
  const SameDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 380,
            height: 505,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(13, 15, 0, 0),
                    child: Text(
                      '날짜 선택',
                      style: body1_2,
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SameDatePicker(),
                ],
              ),
              elevation: 0,
              color: const Color(0xffFAFCFF),
            ),
          ),
        ),
      ),
    );
  }
}

class TemporaryButton extends StatelessWidget {
  const TemporaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NewDetailPage()),
        );
      },
      child: const Text(
        '임시 버튼',
        style: Subtitle2_3,
      ),
    );
  }
}
