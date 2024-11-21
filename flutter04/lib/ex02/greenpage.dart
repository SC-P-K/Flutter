import 'package:flutter/material.dart';

class Greenpage extends StatefulWidget {
  const Greenpage({super.key});

  @override
  State<Greenpage> createState() => _GreenpageState();
}

class _GreenpageState extends State<Greenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(color: Colors.green),
      ),
    );
  }
}
