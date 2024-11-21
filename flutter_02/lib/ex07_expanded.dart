import 'package:flutter/material.dart';

class ExExpanded extends StatelessWidget {
  const ExExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
            children: [
                Text('아이유와 도미노를 더 맛있게',
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                  ),
                ),
                Text('도미노 매니아되고 ~40% 할인받자!',
                  style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,

                  ),
                ),
              // Image.asset('images/dominos.png')
              ]
              )
          ),
    );
  }
}
