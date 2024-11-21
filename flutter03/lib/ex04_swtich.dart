import 'package:flutter/material.dart';

class ExSwtich extends StatefulWidget {
  const ExSwtich({super.key});

  @override
  State<ExSwtich> createState() => _ExSwtichState();
}

class _ExSwtichState extends State<ExSwtich> {
  
  
  bool isOn = true;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SwitchListTile(
              value: isOn, onChanged: (value){
                setState(() {
                  isOn = value!;
                });
          },
          title: Text('알람설정'),
            activeColor: Colors.blue,// 버튼색상 변경.
          ),
      ),
    );
  }
}
