import 'package:flutter/material.dart';
import 'package:flutter06/aad.dart';

void main() => runApp(MyApp());

// void main() {                 // void main 밖코드는 실행안됨.
//   runApp(const MyApp());      // runApp():앱시작, ()안에는 앱 메인페이지 입력하면 됨
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Flutter Demo Home Page",
      theme: ThemeData(primaryColor: Colors.grey),
      home: Text('Flutter Demo Home Page'),
    );
  }
}


