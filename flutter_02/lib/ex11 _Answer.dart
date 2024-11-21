import 'package:flutter/material.dart';

class ExCu extends StatelessWidget {
  const ExCu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "더보기",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12), //decoration 에서 모서리 둥글게
            ),
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.all(8),
            //여유값, 공백
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 여러개의 요소를 사용할때는 children
                Text(
                  '채수민',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'Friend',
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                    Text('155p'),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            height: 50,
            child: Text(
              '서비스',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Container(
            child: Row(
              // Row 안에는 children 필수.
              children: [
                // 1. 첫번째 아이콘 만들기 -> 구성요소 Icon, Text
                Column(
                  // 아이콘과 텍스트를 연결하기위함.
                  children: [
                    Stack(
                      children: [
                        Icon(
                          Icons.copyright,
                          size: 50,
                        ),
                        Positioned(
                          bottom: 3,
                          right: 1,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.pinkAccent),
                            child: Text(
                              'N',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text('포인트 충전소'),
                  ],
                ),

                SizedBox(
                  width: 10,
                ), // 어플 아이콘 사이의 여백

                Column(
                  children: [
                    Stack(
                      children: [
                        Icon(
                          Icons.chat,
                          size: 50,
                        ),
                        Positioned(
                          bottom: 3,
                          right: 1,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.pinkAccent),
                            child: Text(
                              'N',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text('상담하기'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 공간을 만드어줄 sizedbox

// 다음주 부터는 기능을 구현해볼 것임!!
