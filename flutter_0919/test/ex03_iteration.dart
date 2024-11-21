void main(){

  // 1. for 문 -> 시작점,  검사조건(종료점), 반복후 작업
  // 항상 검사조건에 의해서 종료할지 안할지가 판단 된다!
  int i = 1;

  for(int i = 1; i <= 3; i++){


    print('${i}');
    // print('1');
    // print('2');
    // print('3');
  }

  print('반복문 종료이후 i : ${i}');


  // 2. for in문 -> python의 문법
  List<int> list = [1,2,3];

  for(int a in list){
    print('${a}');
  }


  // 3. while문
  while(true){
    print('while문 출력 구조!');
    break;
  }

  // 4. do-while 문
  // : 무조건 한번은 실행하게 하는 while문 (false 이더라도)
  do{
    print('무조건 실행되는 구조!');
  }while(true); // do문 실행후 while 조건 확인후 다시 do문으로 돌아가서 반복.while에 {}가 없음!




  int n = 1 ;

  do{
    print('무조건 실행되는 구조!');
    n++;
  }while(n <= 3);


}