import 'package:bax_web/pages/privacy_policy_page.dart';
import 'package:bax_web/pages/terms_of_service_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
      const Text(
        'Search for Speed',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
      ),
      const SizedBox(
        height: 1200,
      ),
      const Center(
        child: Text(
          'There is more to come.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      const SizedBox(
        height: 240,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              context.go(TermsOfServicePage.route);
            },
            child: const Text('利用規約'),
          ),
          TextButton(
            onPressed: () {
              context.go(PrivacyPolicyPage.route);
            },
            child: const Text('プライバシーポリシー'),
          ),
        ],
      ),
      const SizedBox(
        height: 24,
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
