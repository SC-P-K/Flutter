import 'package:flutter/material.dart';

class ExStack extends StatelessWidget {
  const ExStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 여기서 const가 있으면 Container를 사용할 수 없다 ★★★★★★★★★★★
      body: SafeArea(
          child: Stack(
            //alignment: Alignment.center, // 위치를 변경할 수 있는 속성.
            children: [
              Positioned(
                bottom: 60,
                child: Container(
                  width: 130,
                  height: 130,
                  color: Colors.grey,
                ),
              ),

              Positioned(
                top: 10,
                bottom: 40,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),

              Positioned(
                top: 100,
                child: Container(
                  width: 70,
                  height: 70,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
      ),
    );
  }
}
