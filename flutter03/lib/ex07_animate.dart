import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ExAnimate extends StatefulWidget {
  const ExAnimate({super.key});

  @override
  State<ExAnimate> createState() => _ExAnimateState();
}

class _ExAnimateState extends State<ExAnimate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          WavyAnimatedText('집에 가고싶다'),
          WavyAnimatedText('집으로 보내줘 '),
        ],
        isRepeatingAnimation: true,
        onTap: () {
          print("Tap Event");
        },
      ),
    );
  }
}
