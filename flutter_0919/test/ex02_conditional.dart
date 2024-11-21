void main() {
  // 1. if 문
  if (true) {
    // 조건식이 true일때 실행할 문장
    print('if문 구조입니다.');
  } else {
    // else : if조건이 아닌 모든 내용들을 가져올 수 있는 키워드
    // 조건식이 절대로 달리지 않는다!
    print('else문 구조 입니다.');
  }


  // 2. else if문 => python elif문과 동일하다.
  int score = 70;

  if (score >= 90) {
    print('A학점 입니다.');
  } else if (score >= 80) {
    print('B학점 입니다.');
  } else if (score >= 70) {
    print('C학점 입니다.');
  } else {
    print('D학점 입니다.');
  }


  // 3. switch문 (java,c) : 조건의 비교를 true/false가 아닌 실제 데이터 값으로 비교!
  //                        케이스마다 결과 값을 주어 사용가능!
  //                        break 가 없다면 멈추지않고 밑에 내용까지 실행해버림, 하지만 dart에서는 없어도 된다고 함.
  int n = 3;


  switch (n % 2) {
  // 1.
    case 1:
      print('홀수 입니다.');
      if(true){
        print('if문의 구조');
      }
      break; // case 구조를 벗어날 수 있는 키워드


  // 2.
    case 0:
      print('짝수 입니다.');
      break;


  // 3.
    default: // case에 해당하지 않는 데이터들을 가져올 수 있는 키워드
      print('잘못된 데이터 입니다.');
      break;
  }
}