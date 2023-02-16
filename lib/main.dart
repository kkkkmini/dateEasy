import 'package:flutter/material.dart';
import 'package:da_easy_front/font.dart';
import 'package:da_easy_front/newDate.dart';
import 'package:da_easy_front/primitiveMain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DaHomePage(),
      theme: ThemeData(
        fontFamily: 'seoul_B',
        primaryColor: Colors.black,
        useMaterial3: true,
      ),
    );
  }
}

class DaHomePage extends StatefulWidget {
  const DaHomePage({super.key});

  @override
  State<DaHomePage> createState() => _DaHomePageState();
}

class _DaHomePageState extends State<DaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDF4F9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.83),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Image.asset(
                'assets/images/daeasyLogo.png',
                width: 25.03,
                height: 25.03,
              ),
              const Text(
                'Da-easy',
                style: TextStyle(fontSize: 29, color: Colors.grey),
              )
            ],
          ),
          backgroundColor: const Color(0xffEDF4F9),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Center(
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(5, 40, 0, 12),
                child: Text(
                  '데이트 목록',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              DaCard(),
              TemporaryButton(),
              GotoMain(),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          backgroundColor: const Color(0xffFFD539),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NewDatePage()),
            );
          },
          child: const Icon(
            Icons.add,
            size: 50,
          ),
        ),
      ),
    );
  }
}

Widget DaCard() {
  return Column(
    children: [
      for (int i = 0; i < 3; i++)
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              width: 367,
              height: 120,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                    child: ListTile(
                      trailing: IconButton(
                        icon: const Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                      title: Text(dateName[i], style: Title3),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dateDay[i], style: body1_2),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.place),
                              Text(
                                datePlace[i],
                                style: chips1_1,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    ],
  );
}

final dateName = [
  '전시회 데이트',
  '야구장 데이트',
  '박물관 데이트',
  '도서관 데이트',
];

final dateDay = [
  '2023 / 09 / 30',
  '2023 / 10 / 27',
  '2023 / 11 / 1',
  '2023 / 12 / 23',
];

final datePlace = [
  '국립 현대 미술관',
  '사직구장',
  '화성 박물관',
  '부산 도서관',
];
