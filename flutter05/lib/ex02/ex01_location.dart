import 'package:flutter/material.dart';
import 'package:geolocator/geolocation.dart';

class Location extends StatefulWidget { // 내위치만 찍어볼꺼라 stl로 해도되나 일단 stf
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  // 사용자의 위치를 가져올 수 있는 메소드
  void getLocation() async{
    // 1. 위치정보를 사용하기 위한 권한요청!
    await Geolocator.requestPermission(); //권한요청 시작

    // 2. 사용자의 위치정보 가져오기! (위 작업이 끝날때까지 기다렸다가 작업함(await))
    Position position = await Geolocator.getCurrentPosition();

    print(position); // 확인

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: ElevatedButton(onPressed: (){
          getLocation();
        }, child: const Text('내 위치 가져오기')),
      )),
    );
  }
}
