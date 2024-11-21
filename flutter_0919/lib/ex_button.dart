import 'package:flutter/material.dart';

class ExButton extends StatelessWidget {
  const ExButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
                onPressed: (){
                  // 버튼이 눌였을 경우 처리할 과정을 작성할 수 있는 영역!
                  print('버튼이 눌렸습니다!');

            }, icon: Icon(Icons.add_box_outlined)),
            TextButton(onPressed: (){
              print('TextButton 이 눌렀습니다 !');
            }, child: Text('TextButton'),
                style : TextButton.styleFrom(backgroundColor: Colors.green,
                foregroundColor: Colors.white
                ),
            ),

            ElevatedButton(onPressed: () {
              print('Elevatedbutton  감지');
              }, child: Text('button')
            ),

            OutlinedButton(onPressed: ()
          ],
        ),
        

      ),
    );
  }
}
