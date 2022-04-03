// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'ui/pages/pages.dart';

final router = Provider((ref) {
  bool isTest = false;

  return GoRouter(
    routes: [
      GoRoute(
        path: '/title',
        builder: (context, state) => TitlePage(),
      ),
      GoRoute(
        path: '/edit_profile',
        builder: (context, state) => EditProfilePage(),
      ),
      GoRoute(
        path: '/how_to_use',
        builder: (context, state) => HowToUsePage(),
      ),
      GoRoute(
        path: '/language_setting',
        builder: (context, state) => LanguageSettingPage(),
      ),
      GoRoute(
        path: '/new_profile_setting',
        builder: (context, state) => NewUserRegistrationPage(),
      ),
      GoRoute(
        path: '/new_registration',
        builder: (context, state) => NewRegistrationPage(
          isTest: isTest,
        ),
      ),
      GoRoute(
        path: '/new_tourou',
        builder: (context, state) => NewTourouPage(),
      ),
      GoRoute(
        path: '/privacy_policy',
        builder: (context, state) => PrivacyPolicyPage(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => ProfilePage(
          isTest: isTest,
        ),
      ),
      // GoRoute(
      //   path: '/self_tourou_detail',
      //   builder: (context, state) => SelfTourouDetailPage(
      //     selfTourou: null,
      //   ),
      // ),
      GoRoute(
        path: '/self_tourou',
        builder: (context, state) => SelfTourouPage(
          isTest: isTest,
        ),
      ),
      GoRoute(
        path: '/setting',
        builder: (context, state) => SettingPage(
          isTest: isTest,
        ),
      ),
      GoRoute(
        path: '/sign_in',
        builder: (context, state) => SignInPage(
          isTest: isTest,
        ),
      ),
      GoRoute(
        path: '/sign_in',
        builder: (context, state) => SignInPage(
          isTest: isTest,
        ),
      ),
      GoRoute(
        path: '/title',
        builder: (context, state) => TitlePage(),
      ),
      // GoRoute(
      //   path: '/world_tourou_detail',
      //   builder: (context, state) => WorldTourouDetailPage(
      //     worldTourou: null,
      //   ),
      // ),
      GoRoute(
        path: '/world_tourou',
        builder: (context, state) => WorldTourouPage(
          isTest: isTest,
        ),
      ),
    ],
  );
});
