import 'package:bax_web/pages/privacy_policy_page.dart';
import 'package:bax_web/pages/terms_of_service_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final items = [
      SizedBox(
        height: 240,
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: RiveAnimation.asset(
            'assets/logo.riv',
            key: UniqueKey(),
          ),
        ),
      ),
      Container(
        color: Colors.black,
        height: 120,
        child: const FittedBox(
          child: Text(
            'BAX',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.white,
              fontSize: 100,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 200,
      ),
      Image.asset('assets/map.png'),
      const Text(
        '爆速Wi-Fiを探せ。',
        style: TextStyle(
          height: 1,
          fontWeight: FontWeight.w900,
          fontSize: 60,
        ),
      ),
      const SizedBox(height: 16),
      const Text(
        'BAXは爆速Wi-Fiをみんなで探し、共有するアプリです。',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 20,
        ),
      ),
      const SizedBox(
        height: 200,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
        child: Image.asset('assets/measurement.png'),
      ),
      const Text(
        '計測でBAXを貯めろ。',
        style: TextStyle(
          height: 1,
          fontWeight: FontWeight.w900,
          fontSize: 60,
        ),
      ),
      const SizedBox(height: 16),
      const Text(
        'Wi-Fiを計測してBAXを貯めよう。BAXはギフト券に交換できます。',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 20,
        ),
      ),
      const SizedBox(
        height: 240,
      ),
      const Text(
        '新機能が続々と解放',
        style: TextStyle(
          height: 1,
          fontWeight: FontWeight.w900,
          fontSize: 60,
        ),
      ),
      const SizedBox(height: 16),
      const Text(
        '施設の詳細情報や、絞り込み検索などアップデートにご期待ください。',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 20,
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
