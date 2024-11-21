import 'package:flutter/material.dart';

class MainPage1 extends StatefulWidget {
  const MainPage1({super.key});

  @override
  State<MainPage1> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Main Page 입니다', style: TextStyle(fontSize: 25),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                // 버튼이 클릭되면 화면 이동!

                // 화면이동의 기본적인 기능 Navigator(객체) 사용!
                // push: 화면을 쌓아서 실행할 수 있는 기능!
                // pop: 화면을 삭제하는 기능!


                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context){
                //       return SubPage();
                //     }));


                // 화면 이동시 이전의 화면은 삭제하고 이동하는 기법
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => SubPage()),
                        (route) => false);
                 // 화면 이동시 이전의 화면을 삭제할 것인지 설정하는 구문!
                 // false : 화면삭제 o
                 // true : 화면삭제 x



              }, child: Text('Sub Page로 이동')),
            ],
          ),
        ),
      ),
    );
  }
}  // 첫번째 MainPage class


// 두번째 화면을 생성하기 위한 클래스!
class SubPage extends StatefulWidget {
  const SubPage({super.key});

  @override
  State<SubPage> createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sub Page 입니다', style: TextStyle(fontSize: 25),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return MainPage1();
                    }));

              }, child: Text('Main Page로 이동')),
            ],
          ),
        ),
      ),
    );
  }
}

