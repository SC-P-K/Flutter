import 'package:flutter/material.dart';
import 'package:flutter05/ex03/weather.dart';
import 'package:flutter05/ex03/weatherMain.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  // 데이터를 요청하는 화면!
  // 1. 위치기반을 통해 사용자의 위치를 가져오기!
  // 2. 해당 위치를 기반으로 날씨 데이터 가져오기!

  @override
  State<Loading> createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {
  double? lat;
  double? lon;
  String api = 'c7bce1be38c9a4728b80141c21cfec2a';


  // ***** 초기화 작업으로 바로 실랭이 가능한 메소드 생성!
  @override
  void initState(){
    print('실행');
    //어플 실행시 최초 한번만 실행이 되는 메소드!
    //어플 시작과 동시에 getLocation() 메소드가 호출되도록 한다!
    getLocation();

    // super.initState();
  }



  // 1. 위치 요청 메소드
  void getLocation() async{
    await Geolocator.requestPermission(); // 위치정보 허가
    Position position = await Geolocator.getCurrentPosition(); // 현재 나의 위치값 가져오기

    lat = position.latitude; //  위에서 전역변수로 선언했기 때문에 중복 선언(double) 하면 화면안뜸...
    lon = position.longitude;

    getWeather();
  }


    // 2. 날씨 요청 메소드
    void getWeather() async{
      String uri = 'https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${api}';


      Response res = await get(Uri.parse(uri));


      // +) res 내용을 간단한 구조로 만드는 작업 필요!
      Weather data = weatherFromJson(res.body);

      // 데이터가 잘 넘어 왔다면 WeatherMain 클래스로 데이터를 가지고
      // 화면을 이동한다!
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => WeatherMain(data : data)),
          (route) => false);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: CircularProgressIndicator(),
      )),
    );
  }
}
