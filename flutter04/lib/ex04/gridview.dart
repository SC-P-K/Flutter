import 'package:flutter/material.dart';

// GridView는 생성부터 어느방식으로 생성할 것인지 선택 할 수 있다!

// count 방식 , Extent방식



// count 방식
class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {

  // 데이터 생성
  var dataList = List<int>.generate(30, (i) => i++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemBuilder: (Context, index) =>
              Card(
                child: Container(
                  color: Colors.green[100],
                  height: 50,
                  child: Text('${dataList[index]}'),
                ),
              ),
          itemCount: dataList.length, // item을 몇개 불러올 것인가!
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 한라인에 띄워지는 item 갯수 지정
              mainAxisSpacing: 5, // 위아래의 간격을 정하는 속성.
              crossAxisSpacing: 5, // 좌우의 간격(여백)을 생성
              childAspectRatio: 2 / 1 //item의 디자인을 비율로 생성하는 속성 '가로/세로'
          ),

        ),
      ),
    );
  }
}







// Extent 방식
class GridExtent extends StatefulWidget {
  const GridExtent({super.key});

  @override
  State<GridExtent> createState() => _GridExtentState();
}

class _GridExtentState extends State<GridExtent> {

  var dataList2 = List<int>.generate(30, (i) => i++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemBuilder: (context, index) =>
              Card(
                child: Container(
                    color: Colors.grey[100],
                    height: 50,
                    child: Text('${dataList2[index]}'),
              ),
        ),
        itemCount: dataList2.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100, // 디바이스 길이(context를 통해) / 100 나눈 몫 +1 -> 화면에 띄우고자 하는 갯수
            //계산하기 귀찮음으로 count를 더 많이 씀...
        ),

      ),
    ),);
  }
}
