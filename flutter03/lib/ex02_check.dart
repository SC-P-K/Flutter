import 'package:flutter/material.dart';

class ExCheckBox extends StatefulWidget {
  const ExCheckBox({super.key});

  @override
  State<ExCheckBox> createState() => _ExCheckBoxState();
}

class _ExCheckBoxState extends State<ExCheckBox> {

  // 체크박스의 체크를 담을 수 있는 변수 선언!
  bool isChecked1 = false;
  bool isChecked2 = false;
  // 같은 변수면 sync되어서 각각 변수를 다르게 줘야한다

  // 여러개의 체크박스를 한번에 관리할 수 있는 리스트 생성
  List<bool> isCheck = [false,false];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column( // 역할 ?????????????????????
            children: [
              // value: 체크 o = true , 체크 x = false
              Row( // Row 통해서 체크박스와 Text 한줄로 
                children: [
                  Checkbox(value: isCheck[0], onChanged: (value){
                    setState(() {
                      isCheck[0] = value!; // isChecked에 value값을 전달!
                    });
                  }),
                  // check  초기값, 눌렸을때 동작 필수입력!
                  // onChange : (value){} 필수
                  Text('첫 번째 항목'),
                ],
              ),


              Row(  
                children: [
                  Checkbox(value: isCheck[1], onChanged: (value){
                    setState(() {
                      isCheck[1]= value!; // !의미 바뀌는 값
                    });
                  }),
                  // 값이 계속 바뀌려면 변수값을 넣어줘야한다.(build 전에 선언)
                  Text('두 번째 항목'),
                ],
              ),
              
              
              // 또다른 방식으로 생성해 보기!
              // list와 checkbox 동시에 만들기
              // 한줄에 만듦 = 그 줄의 빈곳을 눌러도 체크박스 작동
              CheckboxListTile(value: isCheck[0], onChanged: (value){
                setState(() {
                  isCheck[0] = value!;
                });
              },
              //CheckboxListTile이 끝나기전에
                title: Text('세번째 항목'),
                // leading = 왼쪽의미
                controlAffinity: ListTileControlAffinity.leading,
              )

              
            ],
          )
      ),
    );
  }
}
