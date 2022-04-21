// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'ui/pages/pages.dart';

final router = Provider((ref) {
  const isTest = false;

  return GoRouter(
    initialLocation: '/title',
    routes: [
      GoRoute(
        path: '/disclaimer',
        builder: (context, state) => const DisclaimerPage(),
      ),
      GoRoute(
        path: '/edit_profile',
        builder: (context, state) => const EditProfilePage(),
      ),
      GoRoute(
        path: '/how_to_use',
        builder: (context, state) => const HowToUsePage(),
      ),
      GoRoute(
        path: '/language_setting',
        builder: (context, state) => const LanguageSettingPage(),
      ),
      GoRoute(
        path: '/new_profile_setting',
        builder: (context, state) => const NewUserRegistrationPage(),
      ),
      GoRoute(
        path: '/new_registration',
        builder: (context, state) => const NewRegistrationPage(
          isTest: isTest,
        ),
      ),
      GoRoute(
        path: '/new_tourou',
        builder: (context, state) => const NewTourouPage(),
      ),
      GoRoute(
        path: '/privacy_policy',
        builder: (context, state) => const PrivacyPolicyPage(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfilePage(
          isTest: isTest,
        ),
      ),
      GoRoute(
        path: '/self_tourou',
        builder: (context, state) => const SelfTourouPage(
          isTest: isTest,
        ),
        routes: [
          GoRoute(
            path: 'detail/:id',
            builder: (context, state) => SelfTourouDetailPage(
              tourouId: state.params['id']!,
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/setting',
        builder: (context, state) => const SettingPage(
          isTest: isTest,
        ),
      ),
      GoRoute(
        path: '/sign_in',
        builder: (context, state) => const SignInPage(
          isTest: isTest,
        ),
      ),
      GoRoute(
        path: '/title',
        builder: (context, state) => const TitlePage(),
      ),
      GoRoute(
        path: '/world_tourou',
        builder: (context, state) => const WorldTourouPage(
          isTest: isTest,
        ),
        routes: [
          GoRoute(
            path: 'detail/:id',
            builder: (context, state) => WorldTourouDetailPage(
              tourouId: state.params['id']!,
            ),
          ),
        ],
      ),
    ],
  );
});
