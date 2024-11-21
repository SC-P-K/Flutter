import 'package:flutter/material.dart';

class ExRadio extends StatefulWidget {
  const ExRadio({super.key});

  @override
  State<ExRadio> createState() => _ExRadioState();
}



// 위 아래 두 클래스를 벗어난 곳에서 정의 -> 클래스 구조나 메소드 구조를 벗어난 위치에서 생성!
// 라디오 버튼 사용을 위한 그룹 내용을 선언!
// -> 열거형 변수(enum)로 해당 내용 선언!
enum Gender {man, woman}



class _ExRadioState extends State<ExRadio> {

  // 열거형 값을 담고 있을 변수!
  Gender g = Gender.man;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              RadioListTile(value: Gender.man, groupValue: g, onChanged: (value){
                setState(() {
                  g = value!;
                });
              },
                title: Text('남성'),
              ),
              // 감지가 있으면 '()', 어떤 동작을 {} 하겠다.
              // 중복을 잡기위한  groupValue



              RadioListTile(value: Gender.woman, groupValue: g, onChanged: (value){
                // value와 groupValue를 비교하며 작동방식을 이해하자.
                setState(() {
                  g = value!;
                });
              },
                title: Text('여성'),
              ),
            ],
          ),
      ),
    );
  }
}
