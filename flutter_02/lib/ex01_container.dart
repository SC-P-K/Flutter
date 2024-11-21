import 'package:flutter/material.dart';

class ExContainer extends StatelessWidget {
  const ExContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [

              // 1. Text()
              Text('flutter',
                style: TextStyle(backgroundColor: Colors.amber),
              ),

              // 2. Container()
              Container(
                // 1. Container 크기를 가지고 있지 않을 경우 전체화면의 자신의 크기로 간주한다!
                // 2. Container는 width, height 속성을 통하여 자체적크기를 가질수 있다.
                // 3. Container가 자체적인 크기를 가지고 있지 않고 ,child 속성으로 하위 위젯을
                // 가지고 있다면 하위 위젯의 크기만큼이 자신의 크기가 된다!
                color: Colors.green,
                //width : 200,
                //height: 200,
                child: Text('flutter'),
              ),
            ],
          ),),
    );
  }
}
