import 'package:flutter/material.dart';
// 1. 화면을 구성하기 위하여 가장 기본적으로 필요한 테마 패키지!

// 2. 화면의 구조를 만들수 있는 class 생성 -> stateless , stateful 중 선택
// stl ====> 기본구조를 만들어주는 단축단어

class ExAppbar extends StatelessWidget {
  const ExAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 하얀화면 Scafold
      appBar: AppBar(// return 부분에 const가 있으면 AppBar 위젯을 불러올 수 없다.
        title: Text('MyApp'), // Text를 넣을 수 있음.
        backgroundColor: Colors.blueAccent[100], // 채도값을 설정할 수 있음 !, Colors.만쳐도 색상 선택가능!
        foregroundColor: Colors.deepPurple,// 아이콘 색상 변경
        leading: Icon(Icons.menu), // 모양만 클릭을 하려면 위젯화 시켜줘야함.
        actions: [  // []위젯들 여러개를 한꺼번에 불러올 수 있다 !
          Icon(Icons.add),
          Icon(Icons.settings),
          Icon(Icons.add_alert),
        ],
      ),
    );
  }
}

