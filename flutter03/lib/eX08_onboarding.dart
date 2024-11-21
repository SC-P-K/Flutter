import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class ExOnboarding extends StatelessWidget {
  const ExOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnBoardingSlider(
          headerBackgroundColor: Colors.white,
          finishButtonText: 'Register',
          finishButtonStyle: FinishButtonStyle(
            backgroundColor: Colors.black,
          ),
          skipTextButton: Text('Skip'),
          trailing: Text('Login'),
          background: [
            // onboarding을 사용할때는 화면의 크기가 보이는것보다 더 크므로
            // 나의 화면 자체를 명확하게 지정할 수 없다!
            Image.asset('images/smhrd_1.png', width: MediaQuery.of(context).size.width),
            Image.asset('images/smhrd_2.png', width: MediaQuery.of(context).size.width),
          ],
          totalPage: 2,
          speed: 1.8,
          pageBodies: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  //Text('Description Text 1'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  //Text('Description Text 2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
