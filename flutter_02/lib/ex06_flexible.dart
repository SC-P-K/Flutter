import 'package:flutter/material.dart';

class ExFlexible extends StatelessWidget {
  const ExFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Flexible,Expanded 미사용'), // 힌트 텍스트, ',' 주의!
            Row(
              children: [ // 여러개의 Container를 사용하기위해 Row 위젯 사용
                Container(
                  width: 400,
                  height: 50,
                  color: Colors.red,

                ),
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.orange,
                ),

              ],
            ),
            SizedBox(height: 50,),

            Text('Flexible.loose 사용'), // 힌트 텍스트, ',' 주의!
            Row(
              children: [ // 여러개의 Container를 사용하기위해 Row 위젯 사용
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  //fit의 기본값은 FlexFit.loose로 생략이 가능하다!
                  // fit: FlexFit.loose,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),

            SizedBox(height: 50,),

            Text('Flexible.tight 사용'),

            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: 30,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: 30,
                    height: 50,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),

            SizedBox(height: 50,),

            Text('Flexible.flex 사용'),
            // FlexFit.tight와 같이사용해야한다.
            // flex의 값이 각각의 비율로 맞추어 송출.
            // flex는 요소의 비육을 잡아주는 속성!
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.orange,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 3,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.yellowAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),

            Text('Expanded 사용'),
            // fit : Flexible.tight, flex를 같이쓰지않고 ===> expanded, flex
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container( // alt + enter : Remove this widget
                    width: 30,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 30,
                    height: 50,
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: 30,
                    height: 50,
                    color: Colors.yellowAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

