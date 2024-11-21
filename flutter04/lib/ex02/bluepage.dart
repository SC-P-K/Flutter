import 'package:flutter/material.dart';

class Bluepage extends StatefulWidget {
  const Bluepage({super.key});

  @override
  State<Bluepage> createState() => _BluepageState();
}

class _BluepageState extends State<Bluepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(color: Colors.blue),
      ),
    );
  }
}
