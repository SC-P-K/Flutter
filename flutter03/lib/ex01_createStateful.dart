import 'package:flutter/material.dart';

// Stateless -> stl 단축키
// Stateful -> stf 단축키

class CreateState extends StatefulWidget {
  const CreateState({super.key});



  // '=>' 람다식 함수!
  // 리턴의 타입이 state 타입인 메소드!

  @override
  State<CreateState> createState() => _CreateStateState();
}
// CreateState 호출하면 _CreateStateState(); 클래스를 호출하겠다. 때문에


//  화면을 만드는 클래스는 똑같다.
class _CreateStateState extends State<CreateState> {
  // 버튼이 클릭 될때맏다 카운트가 올라갈 변수
  // build() 메소드 안에서는 변수가 아닌 상수로 쓰이므로 해당 영역을 벗어나 선언하는 것이 좋다.
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // 가운데로
              children: [
                // 1. Text()
                Text('${cnt}번째 클릭'), // 포멧팅
            
                // 2. Button()
                ElevatedButton(onPressed: (){

                  // onPressed 로직 변경
                  // 버튼이 클릭되었을때 수행할 로직을 입력하는 부분!

                  setState(() {
                    // 상태 변화가 있는지 체크할 수 있는 메소드
                    // 필수 요소!!!!
                    // setState는 build부터 다시시작함.(UI update)
                    print('버튼 감지');
                    cnt ++;
                  });

                  // 변수 ? 자체 선언 필요 (build 메소드 전에)
                  // build 메소드는 값이 완성되어 있어야한다.
                  // 상태 변화을 인식시키는 메소드가 필요 => setState( () {})

                }, child: Text('클릭')),
              ],
            ),
          ),
      ),
    );
  }
}
