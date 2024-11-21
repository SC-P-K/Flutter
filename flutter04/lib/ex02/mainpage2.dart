import 'package:flutter/material.dart';
import 'named.dart';

class Mainpage2 extends StatefulWidget {
  const Mainpage2({super.key});

  @override
  State<Mainpage2> createState() => _Mainpage2State();
}

class _Mainpage2State extends State<Mainpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                // pushAndRemoveUntil == pushNamed
                // : 화면 이동시 이전의 화면을 삭제하고 넘어가는 기능!

                ElevatedButton(
                    onPressed: (){
                      //Navigator.pushNamed(context, '/red');
                      Navigator.pushNamed(context, RouteName.redPage);
                    }, // context 정보를 가지고 /red 주소로 이동.
                    child: Text('RED')),

                ElevatedButton(
                    onPressed: (){
                      //Navigator.pushNamed(context, '/blue');
                      Navigator.pushNamed(context, RouteName.bluePage);
                    },
                    child: Text('BLUE')),

                ElevatedButton(
                    onPressed: (){
                      //Navigator.pushNamed(context, '/green');
                      Navigator.pushNamed(context, RouteName.greenPage);
                    },
                    child: Text('GREEN')),



              ],
            ),
          ),
      ),
    );
  }
}
