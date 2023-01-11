import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      const SizedBox(
        height: 400,
        child: RiveAnimation.asset(
          'assets/logo.riv',
        ),
      ),
      const FittedBox(
        child: Text(
          'Search for Speed',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
      ),
      const SizedBox(
        height: 1200,
      ),
      const Text(
        'There is more to come.',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      const SizedBox(
        height: 240,
      ),
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 320,
                child: items[index],
              ),
            ],
          );
        },
      ),
    );
  }
}
