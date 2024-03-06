import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/pages/auth/sign_in_page.dart';
import 'package:taesung_app/pages/auth/sign_up_page.dart';
import 'package:taesung_app/pages/main/main_page.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    routes: <GoRoute>[
      GoRoute(path: '/', builder: (context, state) => const MainPage()),
      GoRoute(path: '/signIn', builder: (context, state) => const SignInPage()),
      GoRoute(path: '/signUp', builder: (context, state) => const SignUpPage()),
    ],
  );
}
