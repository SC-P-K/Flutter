import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// 1. 라이브러리 설치! -> pubspec.yaml
// 2. 해당 라이브러리에 대한 코드를 가져와 사용!

class ExToast extends StatefulWidget {
  const ExToast({super.key});

  @override
  State<ExToast> createState() => _ExToastState();
}

class _ExToastState extends State<ExToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          //Toast 메시지는 어느시점에 해당 메세지를 띄울것인지
          // 시작점이 있어야 하므로 대부분 버튼과 함께 쓰인다!

          Fluttertoast.showToast(
              msg: "This is Center Short Toast",
              toastLength: Toast.LENGTH_SHORT, // 메신저를 띄우는 시간 -> android용
              gravity: ToastGravity.BOTTOM, // 메신저가 띄워지는 위치 -> android & iOS
              timeInSecForIosWeb: 5, // 메신저 띄우는 시간 -> ios, web용
              backgroundColor: Colors.greenAccent,
              textColor: Colors.black,
              fontSize: 10.0,

              //web 용 속성 추가!
              webBgColor: "blue",
              webPosition: "center" // 디자인은 아래에서 위치가 설정된다
          );

        }, child: Text('Toast 띄우기')),
      ),
    );
  }
}
