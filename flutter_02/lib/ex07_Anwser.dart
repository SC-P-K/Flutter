import 'package:flutter/material.dart';

class ExDomino extends StatelessWidget {
  const ExDomino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          height: 90,
          margin: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: const [
                    // Add children widgets here as needed
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: const [
                    // Add children widgets here as needed
                  ],
                ),
              ),
              Column(
                children: const [
                  // Add children widgets here as needed
                ],
              ),
              Image.asset(
                'assets/images/example.png',
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
