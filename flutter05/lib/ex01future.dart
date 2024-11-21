
// import 'pacvoid main(){
//
//   callSend();
//   callReceive();
//  
// }
//
// void callSend(){ // 전화거는 메소드
//   print('연락처 입력후 전화걸기!');
//
// }
//
//
//
// void callReceive(){
//
//   print('..네! 여보세요');
// }

// 거의 동시, 순서대로 작동






void main(){

  callSend();
  // print(callReceive());

  Future<String> future = callReceive();

  future.then((value){
    print(value);
  });

}

void callSend(){ // 전화거는 메소드
  print('연락처 입력후 전화걸기!');

}



Future<String> callReceive() async{ // Future<타입> 메소드 ; 어떤타입으로 돌아올 것인가?, Future , async, await 같이쓴다. // Future에서 답(string)이 돌아오기 전까지 다른작업(async)을 하다가 오면 작업

  String ans = '';
  
  await Future.delayed(Duration(seconds: 3),(){
    String ans = '..네! 여보세요??';
  }); // Future 타입으로부터 
  
      
      return ans;
  
}
