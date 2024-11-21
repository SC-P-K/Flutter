import 'package:flutter/material.dart';

class Exbottom extends StatefulWidget {
  const Exbottom({super.key});

  @override
  State<Exbottom> createState() => _ExbottomState();
}

class _ExbottomState extends State<Exbottom> {

  // 화면 선택에 따른 인덱스 관리할 변수 선언! // build 메소드 전에 선언!
  int index = 0; // 고정형

  // 여러개의 화면을 관리할 수 있는 리스트 선언!
  // List <타입>  class 도 위젯(하늘색)이다!
  List<Widget> pageList = [Exhome(),Exchat(),Excall()];
  @override
  Widget build(BuildContext context) { // 화면을 생성하겠다는 build 메소드
    return Scaffold(
      body:
      // [
      //   // 각 아이템에 연결될 화면 생성하기 // 디자인 클래스로 연결해서 쓰자 (그냥 쓰면 너무 복잡해지므로)
      //   // Center(child: Text('home'),), // [0]
      //   //
      //   // Center(child: Text('chat'),), // [1]
      //   //
      //   // Center(child: Text('call'),), // [2]
      // ][index],

      // 여러 클래스를 통합해 관리할 수 있도록 (화면관리) 리스트 선언!
      pageList[index],

      bottomNavigationBar: BottomNavigationBar(
        // label에 대한 속성을 사용하는 내용!
        showSelectedLabels: true,
        showUnselectedLabels: false,

        // bottom  button 속성 사용!
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.grey[200],

        // 아이템 선택에 따른 인덱스를 전달하는 속성 // [index]
        // bottomnavigation이 인덱스를 관리할 수 있는 속성
        currentIndex: index,

        // 아이템 선택에 따른 인덱스를 전달하는 속성 -> 메소드 생성 -> setState()
        onTap: onItemTap,

        // 각각에 화면이동을 위한 버튼들을 items라고 함.
        // 화면 이동을 위한 버튼 생성! -> items 필수적으로 필요한 요소!
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'call'),
        ],
        // 버튼이 클릭될 경우 어떻게 연결할 것인지 지정!
        // onTap: inItemTap,

      ),
    );
  } //buid 메소드 종료

  // 아이템 선택기능 추가하기!
  //void onItemTap(선택된 인덱스 번호)
  void onItemTap(int i){ // 선택된 인덱싱 번호가 들어옴.
    setState(() {
      index = i;
    });

  }

} // class 종료


// 디자인할 Class
// bottom 선택에 따른 연결될 화면을 디자인 할 수 있는 화면 class 생성
// stl
class Exhome extends StatelessWidget {
  const Exhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
            children: [
              Icon(Icons.account_circle),
              Text('박세찬님 반갑습니다.'),
            ],
          ),
      ),
    );
  }
}


class Exchat extends StatelessWidget {
  const Exchat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Icon(Icons.chat),
            Text('대화하기'),
          ],
        ),
      ),
    );
  }
}


class Excall extends StatelessWidget {
  const Excall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Icon(Icons.supervisor_account),
            Text('연락처 불러오기'),
          ],
        ),
      ),
    );
  }
}












