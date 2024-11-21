import 'package:flutter/material.dart';

class RyanDetail extends StatelessWidget { // 생성자 메소드
  const RyanDetail({super.key, required this.img, required this.name}); //  RyanDetail이 물려받고 있는 StatelessWidget의 키값을 사용하겠다!
  // required 키워드 : 위젯이 필수적으로 가지;고 있어야할 속성을 지정하는 키워드!
  // this는 밑의 name, img를 연결하겠다는 의미!
  // 필수요소(required)로 정할 수 있도록 정의하겠음!! ex) Row()를 쓰면 필수적으로 children[] 을 사용해야한다.


  // DART 언어는 null 값을 허용하지 않는 언어!
  // 변수를 사용할때 초기화 값이 선언되어 있지 않다면 null값으로 간주!
  // 이를 해결하기 위한 방법!
  // 1. 초기화 선언
  // 2. null 값이 들어갈 수 없는 '상수'로 사용한다!
  
  final String name; // final : 상수
  final String img;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(child: Image.asset(img))
    );
  }
}

