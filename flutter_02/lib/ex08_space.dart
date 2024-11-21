import 'package:flutter/material.dart';

class ExSpace extends StatelessWidget {
  const ExSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('첫번째'),
              Text('두번째'),
              Text('세번째'),
              Text('네번째'),
            ],
          ),
          ),

    );
  }
}
