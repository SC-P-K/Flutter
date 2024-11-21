import 'package:flutter/material.dart';

class VerticalView extends StatefulWidget {
  const VerticalView({super.key});

  @override
  State<VerticalView> createState() => _VerticalViewState();
}

class _VerticalViewState extends State<VerticalView> {
  // 리스트뷰 -> 대량의 데이터를 일정한 디자인에 띄우기 위한 목적!
  // - 데이터만 관리할 수 있는 내용! -> 리스트 변수 사용, 클래스를 통한 객체 타입
  // - 데이터를 띄울 디자인이 필요!
  // 이미지 같은 것들이 하나만 있다면 리스트 변수를 사용하면 되지만 이미지, 텍스트, 버튼 등등이 반복될 경우 클래스를 사용하여 정의한다.

  // 1. 20개의 숫자를 관리 할 수 있는 리스트 생성!
  // List<int> intList = [0,1,2,ㆍㆍㆍ];
  var intList = List<int>.generate(20, (i) => i++); // 0 ~ 19

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          // ListView.builder 필수요소!
          // 1. itemBuiler : 하나의 어떤 리스트 뷰를 보여줄 것인지 디자인하는 속성
          // 2. itemCount : Listview 가 몇개의 item을 만들어야 하는지 설정하는 속성 -> 특징 int 형만들어갈 수 있다.(갯수)

          itemBuilder: (context, index) =>
              Container(
                margin: EdgeInsets.all(10),// 거리 띄우기
                color: Colors.blue[200],
                height: 50,
                child: Center(child: Text("${intList[index]}",
                style: TextStyle(fontSize: 25),),
                ), //20 확인을 위해
              ), // (정보를 가지고 있는 클래스(Context),아이템을 관리할 수 있는 인덱스) =>(return)
          itemCount: intList.length, // itemCount가 없으면 error뜸 필수적으로 들어감!
          // itemCount:[20], 20개 띄우고 멈춤 (error x)


          // 리스트의 방향 설정 속성
          scrollDirection: Axis.horizontal,


        ),
      ),
    );
  }
}
