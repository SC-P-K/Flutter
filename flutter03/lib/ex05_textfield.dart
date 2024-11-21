import 'package:flutter/material.dart';

class ExTextfield extends StatefulWidget {
  const ExTextfield({super.key});

  @override
  State<ExTextfield> createState() => _ExTextfieldState();
}

class _ExTextfieldState extends State<ExTextfield> {
  // 텍스트 필드에 연결할 controller 생성!
  // 1개의 텍스트 필드에 1개의 controller 필요!
  TextEditingController idCon = TextEditingController();
  TextEditingController pwCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  label: Text('ID'),
                  hintText: '아이디를 입력하세요',
                ),
                // 컨트롤러 연결
                controller: idCon,
              ),

              TextField(
                decoration: InputDecoration(
                  label: Text('PW'),
                  hintText: '비밀번호를 입력하세요',
                ),
                obscureText: true,
                controller: pwCon,// 비밀번호를 감추기 위한 옵션!
              ),
              ElevatedButton(onPressed: () {
                // 버튼이 눌리면 TextField에 입력된 내용 가져오기!
                // -> controller 필요!
                //print('${idCon.text} / ${pwCon.text}');


                String id = idCon.text;
                String pw = pwCon.text;


                if (id == 'test' && pw == '1234') {
                  // 스낵바 사용하기
                  ScaffoldMessenger.of(context).showSnackBar(
                    //SnackBar(content: Text('${idCon.text} / ${pwCon.text}')
                      SnackBar(content: Text('로그인 성공!!'))
                  );
                }
              }, child: Text('login')),
            ],
          ),
        ),
      ),
    );
  }
}
