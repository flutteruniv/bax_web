import 'package:bax_web/pages/landing_page.dart';
import 'package:bax_web/pages/privacy_policy_page.dart';
import 'package:bax_web/pages/terms_of_service_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:go_router/go_router.dart';

final _observer = FirebaseAnalyticsObserver(
  analytics: FirebaseAnalytics.instance,
);

final router = GoRouter(
  observers: [
    _observer,
  ],
  errorPageBuilder: (context, state) {
    return const NoTransitionPage(
      child: LandingPage(),
    );
  },
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: ((context, state) =>
          const NoTransitionPage(child: LandingPage())),
    ),
    GoRoute(
      path: PrivacyPolicyPage.route,
      pageBuilder: ((context, state) =>
          const NoTransitionPage(child: PrivacyPolicyPage())),
    ),
    GoRoute(
      path: TermsOfServicePage.route,
      pageBuilder: ((context, state) =>
          const NoTransitionPage(child: TermsOfServicePage())),
    ),
  ],
);
