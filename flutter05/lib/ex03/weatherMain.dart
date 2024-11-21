import 'package:flutter/material.dart';
import 'package:flutter05/ex03/weather.dart';
import 'package:intl/intl.dart';


class WeatherMain extends StatefulWidget {
  const WeatherMain({super.key, required this.data});

  final Weather data;

  // Loading 화면에서 위치에 대한 날씨 정보를 가져온 후
  // 해당하는 내용을 디자인에 연결하는 클래스!

  @override
  State<WeatherMain> createState() => _WeatherMainState();
}

class _WeatherMainState extends State<WeatherMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Weather App', style: TextStyle(fontWeight: FontWeight.bold,
        ),),
        foregroundColor: Colors.white,
      ),

      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // 양쪽 끝에 배치
              children: [
                Text(widget.data.name,style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),), // data를 가져오려면 widget.data.가져올 class명을 넣으면 된다. // 에뮬 Location 설정 必!
                Column(
                  children: [
                    //Text에는 String 타입만 들어갈 수 있는데 widget.data.main.temp는 숫자형임으로 문자화(.toString) 시켜준다.
                    Text(widget.data.main.temp.toString(), style: TextStyle(fontSize: 35, color: Colors.red),),
                    Text(DateFormat('yy년 MM월 dd일').format(DateTime.now())),
                    Text(DateFormat('hh시 mm분 ss초').format(DateTime.now())), // 에뮬레이터 휴대폰 시간을 가져옴.
                  ],
                ),
              ],
            ),
            // 여백 추가

            SizedBox(height: 50,),

            // 요소 추가(날씨, 풍향...)
            Container(
              // 여백
              padding: EdgeInsets.all(20),

              // 둥근 모서리
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5),
              ),

              // Container 하위내용 추가
              child: Row(
                children: [ // 각각의 자식 위젯(하위위젯들)을 위젯(Expended)으로 감싸서 같은 폭으로 
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.sunny, size: 40,),
                        Text(widget.data.weather[0].main),
                      ],
                    ),
                  ),
                  // 사이에 세로 구분선을 만들기위한 부분
                  Container( // 이부분은 Expanded 사용하면 안됨 ==> width : 1이 의미가 없이 비율을 먹음.
                    height: double.infinity,// 전체적인 높이
                    width: 1,
                    color: Colors.grey,
                  ),





                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Icon(Icons.water_drop, size: 40,),
                        Text(widget.data.main.humidity.toString()),
                      ],
                    ),
                  ),
                  // 사이에 세로 구분선을 만들기위한 부분
                  Container(
                    height: double.infinity,// 전체적인 높이
                    width: 1,
                    color: Colors.grey,
                  ),



                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Icon(Icons.wind_power, size: 40,),
                        Text(widget.data.wind.speed.toString()),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}

