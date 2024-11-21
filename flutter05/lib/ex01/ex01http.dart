import 'package:flutter/material.dart';
import 'package:flutter05/ex01/UserModel.dart';
import 'package:http/http.dart';

class ExJson extends StatefulWidget {
  const ExJson({super.key});

  @override
  State<ExJson> createState() => _ExJsonState();
}

class _ExJsonState extends State<ExJson> {

  // 1. 대량의 데이터를 담을 수 있는 list 생성!
  List<User> userList = []; // 개체화 class

  // 2. 통신을 통하여 대량의 데이터 불러오기!
  Future<List<User>> getInfo() async { // 비동기 방식, future - async - await future타입을 쓴다면 필수적으로 한몸
  // Future는 데이터를 가져올때만 사용함...  결과값이 넘어 오면 build를 하겠습니다.
    String uri = 'https://jsonplaceholder.typicode.com/users';

    // 통신을 요청할 url 지정!
    Response res = await get(Uri.parse(uri));// Response 객체, res 변수에 담겠다.
    // 원하는 서버를 통하여 데이터를 가져올 것

    // 통신 성공여부 확인하기
    print('성공여부 : ${res.statusCode}'); // res(응답에대한).statusCode(코드 가져오기(404 -> 페이지 오류, 500 -> 데이터 오류, 200 -> 성공적인 응답))
    print(res.body);

    userList = userFromJson(res.body); // json 타입으로 한번에 받아오기위해 json타입화
    print('userList : ${userList[0].name}');

    // res.body ()=>

    return userList;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: FutureBuilder(
        future: getInfo().then((value) => userList = value), //getInfo(통신시작 메소드)
        builder: (context, snapshot) {// 어떻게 만들건지? => 밑에 다되어있음으로
          // snapshot : future 작업이 끝난 후 되돌아 오는 결과값을 담는 변수명!
          if(snapshot.hasData){ // hasData = 데이터를 가져오겠다, boolean 타입[default = True]
            //데이터를 기다려야 하는 상황이라면 로딩위젯 띄우기
            return Center(child: CircularProgressIndicator()); // 로딩중 로고?

          }else{
            // 데이터가 다 가지고 와졌다면 리스트뷰를 띄우기
            return ListView.builder(
                itemCount: userList.length,// 갯수를 지정해야하는데 userList를 만들어놓았음으로 활용할 것
                itemBuilder: (context, index) =>
                    ListTile(// Tile? 체크박스,라디오 버튼같은것을 한줄을 버튼화 하는 것.
                      title: Text(userList[index].name),
                      subtitle: Text(userList[index].address.city), // address 값은 여러개로 되어있음으로 한번더 인덱싱 해줘야 한다. // Model 확인 필요..
                      leading: Icon(Icons.account_circle),
                      trailing: Icon(Icons.android),
                    )
            );
          }

        },
        // child: ListView.builder(
        //     itemCount: userList.length,// 갯수를 지정해야하는데 userList를 만들어놓았음으로 활용할 것
        //     itemBuilder: (context, index) =>
        //         ListTile(// Tile? 체크박스,라디오 버튼같은것을 한줄을 버튼화 하는 것.
        //           title: Text(userList[index].name),
        //           subtitle: Text(userList[index].address.city), // address 값은 여러개로 되어있음으로 한번더 인덱싱 해줘야 한다. // Model 확인 필요..
        //           leading: Icon(Icons.account_circle),
        //           trailing: Icon(Icons.android),
        //         )
        // ),
      ),





    //     child: IconButton(onPressed: (){
    //   getInfo();
    // }, icon: Icon(Icons.ads_click)),
    ),
    );
  }
}


