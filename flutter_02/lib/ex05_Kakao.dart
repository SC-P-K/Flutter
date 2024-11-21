import 'package:flutter/material.dart';

class ExKakao extends StatelessWidget {
  const ExKakao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.yellowAccent,
              borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/klogo.png',
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text('카카오톡으로 로그인하기')
            ],
          ),
        ),
      ),
    );
  }
}
// row를 center로 감싼다 alt + enter // ctrl + space는 뭐여?
