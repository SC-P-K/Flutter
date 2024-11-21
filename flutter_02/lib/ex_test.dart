import 'package:flutter/material.dart';

class ExTest extends StatelessWidget {
  const ExTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // SafeArea의 필수 항목  child
          child: TextField(
            decoration: InputDecoration(
              label: Icon(Icons.email_outlined),
              hintText: '이메일을 입력하세요'
            ),
          ),
      ),
    );
  }
}
