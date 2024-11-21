import 'package:flutter/material.dart';

class ExCon extends StatelessWidget {
  const ExCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //   // double.infinity : 핸드폰 화면 크기를 자동적으로 계산하여 꽉 맞게 채워주는 기능!
            //   width: double.infinity,
            //   height: 200,
            //   color: Colors.blue,
            // ),

            Container(
              width: 200,
              height: 200,
              //alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
              padding: EdgeInsets.all(50),
              // Container의 테두리를 수정하기 위한 속성!
              // decoration 속성!
              // 1. Container가 자체적으로 가질숭 있는 color 속성과 동시에 사용할 수 없다!
              // -> 동시사용을 위하여 decoration 속성 자체가 color속성을 포함해야 한다!
              decoration: BoxDecoration(
                color: Colors.red, // decoration 밑에 써야함.
                border: Border.all(

                    //: BorderRadius.circular(50),
                  //
                  width: 5,
                ),
                borderRadius: BorderRadius.all(Radius.circular(30)) //테두리
              ),

              child: Center(
                child: Text('Container', style: TextStyle(fontSize: 30),
                  //textAlign: TextAlign.center,
                ),
              ),


            ),
          ],
        ),
      ),
    );
  }
}
