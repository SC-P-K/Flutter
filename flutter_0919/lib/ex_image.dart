import 'package:flutter/material.dart';

class ExImage extends StatelessWidget {
  const ExImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Image'),
        backgroundColor: Colors.pinkAccent[100],
      ),
      body: Row(
        children: [
          Image.asset("images/blueprint_1.jpg",width: 200, height: 200,),
          Image.asset("images/blueprint_2.jpg",width: 200, height: 200,),
        ], // 여러개를 관리할 수있는 구조===> [] == children
      ), // pubspec.yaml 과 연결지어 사용 ==>  Image.asset("")

      // Text('재미있는 이미지 띄우기!', style: TextStyle(backgroundColor: Colors.amber),),
    );
  }
}
// 이미지를 쓰려면 pubspec.yaml 을 이용해야 한다.
// 이미지만 관리할 폴더를 만들어주는게 관리가 편하다.

// 휴대폰과 연결방법
// 1. 개발자모드 활성화 시스템 - 휴대폰정보 - 빌드번호 여러번 터치
// 2. usb 디버깅 활성화
// 3. 휴대폰 과 컴퓨터 연결후 기종에 맞는 드라이버 설치
// 4.