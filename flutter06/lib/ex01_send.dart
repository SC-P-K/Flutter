import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
// dio와 http는 서로 같은 이름의 기능을 가지고 있으므로
// 이를 혼동하지 않고 쓰기위해 http 라이브러리의 이름(별칭)을 http로 부르겠다!



class ExSend extends StatelessWidget {
  const ExSend({super.key});

  // 1. flask 서버 구축
  // 2. 해당 서버로 데이터 통신 요청
  // 3. 결과 값 확인!

  // ++) http 라이브러리 -> dio 라이브러리 사용!


  void getHttp() async {
    String uri = 'http://192.168.219.46:8081/'; //'주소 url' + /(기본경로); // flask 서버
    //연결 , http 라이브러리 중 get()


    http.Response res = await http.get(Uri.parse(uri));
    // Response res = await get(Uri.parse(uri)); // uri를 parse해서 쓸 수 있는 기능.

    // 서버 요청에 대한 응답을 가지고 결과 확인하기!
    if (res.statusCode == 200) { // 만약 res로 부터 상태코드 == 200이라면
      print(res.body); // res.body를 띄우겠습니다. == '서버연결 성공'
    } else {
      print('error 발생');
    }
  }

  // 어떤것을 기준으로 해야하는지 (dio / http) 모르겠다는 error (같이 썼을때) 메소드 get 때문
  // 해결을 위해서는 라이브러리를 수정해주어야 한다. 이름에 별칭을 지어준다.
  // dio는 별칭을 줄 수 없으므로 http에 별칭을 준다.(import 에서)


  void getDio() async {
    //
    // dio 라이브러리를 사용하기 위한 객체 생성이 필수적으로 필요하다!
    final dio = Dio(); // 계속 사용하기위해 변수에 담아준다! 타입은 이미 있으나 final로 고정시켜줘야 한다.
    Response res = await dio.get('http://192.168.219.46:8081/');
    // dio.get('주소값');
    // body라는 것이 없음 그냥 res로 다 받아온다.


    if (res.statusCode == 200) { // 만약 res로 부터 상태코드 == 200이라면
      print('getdio : ${res}');
    } else {
      print('error 발생');
    }
  }

  void getSend() async {
    // async(비동기) 를 사용함으로 await(기다림)를 사용해주어야 한다.

    final dio = Dio();


    //flask 서버로 요청 보내는 코드!
    // GET 방식
    // Response res = await dio.get('http://192.168.219.46:8081/send',
    //     queryParameters: {'id': 'csm'} //쿼리 스트링 // get방식에서 사용
    // );

    // post 방식의 데이터 전달을 위한 option 추가! (이게 없으면 400번대 에러)
    dio.options.contentType = Headers.formUrlEncodedContentType;//jsonContentType 잘안되서 바꿈;


    // POST 방식
    Response res = await dio.post('http://192.168.219.46:8081/send',
        data: {'id': 'csm'}
    );


    // 전송 결과 출력
    print(res);


    // 서버에서 데이터를 전달하는 방식 (2가지)
    // 1. GET : 데이터를 전달 할때 주소값에 연결하여 전송! -> 쿼리스트링(queryParameters) 기법!
    //      Ex) http://192.168.219.46:8081/send?키값 : 데이터값
    //          http://192.168.219.46:8081/send?name=sumin&id=csm // 모두 공백없이 붙여서 써야한다!

    // 2. POST : 데이터를 전달 할때 주소값에 연결하지 않고 감추어 전송!
    //         : 보내지는 형태를 눈으로 확인 할 수 없다!
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: ElevatedButton(
                onPressed: (){
                  // 버튼이 눌린경우 처리할 로직 부분!
                  // getHttp(); // 어떤 작업을 하는 메소드? 새로 생성↑
                  // getDio(); // get 방식
                  getSend(); // post 방식
                }, child: Text('통신 요청')),
          ),
      ),
    );
  }
}
