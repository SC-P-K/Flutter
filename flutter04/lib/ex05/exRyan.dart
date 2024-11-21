import 'package:flutter/material.dart';
import 'package:flutter04/ex05/ExRyandetail.dart';

class Exryan extends StatefulWidget {
  const Exryan({super.key});

  @override
  State<Exryan> createState() => _ExryanState();
}

class _ExryanState extends State<Exryan> {
  // build 이전에 사용할 데이터를 리스트로 정리!
  var imgList = [
    'image/ryan1.jpg',
    'image/ryan2.png',
    'image/ryan3.jpg',
    'image/ryan4.png',
    'image/ryan5.png',
    'image/ryan6.jpg'
  ];
  var imgName = ['리틀 라이언', '반짝 라이언', '하트 라이언', '춘식이와의 만남', '룸메는 춘식이', '좋아요'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          //itemCount: imgList.length,
            itemBuilder: (context, index) => GestureDetector(
            // 제스처 감지 // onTap을 사용하기위함.
            child: Card(
            child: Row(
            children: [
            Expanded(flex: 1, child: Image.asset(imgList[index])),
        // flex 1정도의 비율
        Expanded(
            flex: 1, child: Center(child: Text('${imgName[index]}'))),
        // flex는 default 값이 있음, 다만 child는 필수요소(required)!
        ],
      ),
    ),
    // 하나의 카드가 tap이 감지되면 화면을 이동시킨다!
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (_) => // 네비게이터라는 객체가 무조건 필요 !
    // (_) 현제 정보들을 가지고 => (이동장소)로 이동하겠습니다.
    RyanDetail(
    img: imgList[index],
    name: imgName[
    index]))); // 파란놈들 위젯같은 녀석들 = key:value 구조
    },
    // 하나의 item을 길게 누르면 항목을 삭제하는 기능 만들기
    onLongPress: (){ // 작업처리 기본구조? (){}
    //   setState(() { // print('LongPRESS') // 기능이 작동하고 있는지 확인
    //     imgName.remove(index); //X
    //     imgList.remove(index); //X
    //   });

    // showPopup(imgList[index], imgName[index], index);

          // setState(() {
          //   imgList.removeAt(index); // 인덱스 번호[value]로 지우므로 removeAT으로 해야함
          //   imgName.removeAt(index);
          // });
    },
    ),
    itemCount: imgList.length,
    ),
    ),

    // 리스트 항목을 추가할 수 있는 버튼 생성!
    floatingActionButton: FloatingActionButton(
    onPressed: () {
    // 버튼이 클릭되면 리스트뷰에 새롭게 item 1개 추가!
    // 데이터를 관리하는 리스트 imgList, imgName
    setState(
    () {
    // item이 하나 늘어나는 것은 상태가 변화하는 것이므로 setState((){}) 사용
    imgList.add('image/ryan1.jpg');
    imgName.add('리틀 라이언');
    },
    );
    },
    child: Icon(Icons.add),
    ),
    );
    }

  // 다이얼을 띄울 수 있는 메소드 생성!
  void showPopup(img, name, index) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.7, // 비율로 만듦
              height: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 32,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(img, width: 200, height: 200,),
                  ),
                  SizedBox(height: 10,),
                  Text(name, style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              imgName.removeAt(index);
                              imgList.removeAt(index);
                            });

                            Navigator.pop(context); // close
                          },
                          icon: Icon(Icons.close),
                          label: Text('삭제하기'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200]),
                        ),
                        SizedBox(width: 10,),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close),
                          label: Text('close'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  } // builder 메소드







// 화면이동 => 새로운 창
