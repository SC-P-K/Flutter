import 'package:flutter/material.dart';

class Redpage extends StatefulWidget {
  const Redpage({super.key});

  @override
  State<Redpage> createState() => _RedpageState();
}

class _RedpageState extends State<Redpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(color: Colors.red,)),
    );
  }
}
