import 'package:flutter/material.dart';

class ExIcon3 extends StatelessWidget {
  const ExIcon3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
          child: Stack(
            children: [
              Icon(Icons.favorite_border, size: 90,),
              Positioned(
                top: 5, // 탑으로 부터 거리만큼
                left: 70,// 왼쪽으로 부터 거리만큼
                child: Container( // default = 네모 , 동그라미를 만들기위해서는 decoration을 사용해야한다.
                  width: 20,
                  height: 20,
                  //color: Colors.red, // decoration을 사용하면 여기서는 사용불가
                  decoration: BoxDecoration(
                    color: Colors.red,
                    //borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.circle
                  ),
                ),
              )
            ],
          )),
    );
  }
}
