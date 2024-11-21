import 'package:flutter/material.dart';

class ExIcon extends StatelessWidget {
  const ExIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green[500],
                  ),
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                  child: Icon(Icons.call,
                    size: 80, color: Colors.white,),
                ),

                // 두번째 container 추가!
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.red[500],
                  ),
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                  child: Icon(Icons.camera_alt_outlined,
                    size: 80, color: Colors.white,),
                ),
              ],
            ),

            // 두번째 라인의 row 생성
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.amber[500],
                  ),
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                  child: Icon(Icons.settings,
                    size: 80, color: Colors.white,),
                ),

                // 두번째 container 추가!
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blue[500],
                  ),
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                  child: Icon(Icons.access_alarm,
                    size: 80, color: Colors.white,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

