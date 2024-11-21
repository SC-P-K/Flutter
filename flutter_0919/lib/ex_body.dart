import 'package:flutter/material.dart';

class ExBody extends StatelessWidget {
  const ExBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // 스크롤 기능 만들기(텍스트 오버플로우 해결책) ,명령어 위치
        scrollDirection: Axis.horizontal, //가로,세로
        child: SafeArea( //alt + enter 무엇으로 감쌀 것인가? singlechildscrollview ()전체 내용 감싸기위함.
            child: Column(
              // ctrl + space : 축 붙임...? 텍스트 정렬?
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('첫 번째 텍스트 위젯',style : TextStyle(fontSize: 30.0,fontWeight:FontWeight.bold)),
                Text('두 번째 텍스트 위젯'),
                Text('세 번째 텍스트 위젯'),
                Row(
                  children: [
                    Text('첫 번째 텍스트 위젯'),
                    Text('두 번째 텍스트 위젯'),
                    Text('세 번째 텍스트 위젯'),
                    Text('네 번째 텍스트 위젯'),
                  ],
                ),
              ],
            ),




          //child: Text('우리가 만드는 첫 번째 화면'),
          // Text('두 번째 Text widget') 이렇게는 사용 불가
          // 여러줄을 사용할 경우에는 columm 또는 row 위젯을 사용해야한다.
        ),
      ), // body만 하면 상태표시줄과 겹친다. SafeArea라는 레이아웃 위젯을 사용하여
    );
  }
}
