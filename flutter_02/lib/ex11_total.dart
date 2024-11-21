// 1. 영역을 나눈다 app bar, body, bottom
// 2. 배치별 사용 위젯 정리

import 'package:flutter/material.dart';

class ExTotal extends StatelessWidget {
  const ExTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '더보기',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: Row(
          children: [
            Container(
              child: Text(
                "박세찬님",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              child: Column(
                  // Text(""),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
