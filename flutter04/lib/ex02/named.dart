import 'package:flutter04/ex02/bluepage.dart';
import 'package:flutter04/ex02/greenpage.dart';
import 'package:flutter04/ex02/redpage.dart';

class RouteName{
  static const redPage = '/red'; // 저장되어 있는 영역이 있다. 하나는 hip? static 으로 나뉨
  static const bluePage = '/red';// static은 본 영역에서만 사용할 수 있다.
  static const greenPage = '/red'; // Python의 불변객체 느낌?

}


// map 구조를 사용한 페이지 연결단!
var nameRoutes = {
  //  ? : 도착점 // redpage가 호출되면 value값이
  RouteName.redPage : (context) => Redpage(),
  RouteName.bluePage : (context) => Bluepage(),
  RouteName.greenPage : (context) => Greenpage(),
  };
