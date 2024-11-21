//  주석 : //
//  1. void main() 메소드 생성 : 코드를 실행하기 위한 함수!
// dart 언어는 영역을 표현할 때 {} (중괄호)를 사용하여 표현한다!
void main() {
  // 1. 숫자형 변수 선언 - int(정수), double(실수), num(정수, 실수)

  int a = 5;

  //  변수 선언시 최초 한번만 타입을 지정한다 !
  int b = 10;
  b = 7;

  double c = 3.14;
  c = 3; // 출력시 3.0 값 출력!

  print(a);
  print(b);
  print(c);

  // num 타입
  num n1 = 3;
  num n2 = 1.17;

  // 타입 확인
  print(n1.runtimeType);
  print(n2.runtimeType);

  // num 의 기능이 있으므로 변수로 사용하지 말것.

  // 2. 문자형 -> String
  // ''/""/''' '''
  String word1 = 'flutter';
  String word2 = "반갑습니다";
  String word3 = '''오늘은 7교시만 
  진행되는 
  즐거운 요일!!''';

  // 3. 논리형 -> bool (참/거짓)
  bool a1 = true;
  a1 = false;

  // 4. 콜렉션 -> list,set,Map
  // List -> [1,2,3,4] 순서가 존재하는 타입
  List<int> list = [1, 2, 3];
  print(list);
  print(list[0]);

  // <> 타입이 생략되는 경우 실제 저장된 타입의 형태대로 지정이 된다!
  // set 타입 -> 순서가 존재하지 않는다 -> 인덱스 번호가 존재하지 않는다!
  Set<double> set = {1.1, 2.1, 3.1};
  print(set);
  //pritn(set[0])

  //Map<k(문자형),v> {key:value, k:v}로 표현!
  // 순서가 없으나 이름이 있음.
  Map<String, num> map = {"1" : 1, "2" : 2.0, "3" : 0};
  print(map);
  print(map["2"]);


  // 5. 기타 타입
  // var 타입 : 변수로 데이터 값을 변경은 가능하지만 데이터의 타입자체는 변경할 수 없다!
  var data1 = 12; // 값의 타입을 고정!
  data1 = 10;
  //data1 = 2.1;


  // dynamic : 데이터의 값과 타입 모두 변경이 가능한 변수이다!
  dynamic data2 = 12;
  data2 = 2.1;
  data2 = "2.1";

  print(data1);
  print(data2);

  // 상황에 따라 변수의 타입이 변경되면 안되는 부분에서 var,dynamic을 구분해 사용한다 !



  //dart는 null값을 허용하지 않는다!
  //String num1 = null; //불가
  //String? num1 = null; // null값이 들어올 수도있어?(null 값 허용)
  //String num1! = ''; // null값은 절대 들어올수 없어!

int num4 = 1;

print(num4++);  //1
print(num4);    //2
print(++num4);  //3
print(num4);    //3
print(num4--);  //3
print(num4);    //1
print(--num4);  //1
print(num4++);  //1


  // ++) 문자 포맷팅
  int cnt = 1;

  print('flutter 수업 $cnt 차시');
  print('flutter 수업 ${cnt+1} 차시'); // 연산을 위해 {}사용 가능!
}
// ctrl + shift + f10 : 실행
