import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/pages/device_page.dart';
import 'package:taesung_app/pages/sign_in_page.dart';
import 'package:taesung_app/pages/sign_up_page.dart';
import 'package:taesung_app/pages/root_page.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    routes: <GoRoute>[
      GoRoute(path: '/', builder: (context, state) => const RootPage()),
      GoRoute(path: '/signIn', builder: (context, state) => const SignInPage()),
      GoRoute(path: '/signUp', builder: (context, state) => const SignUpPage()),
      GoRoute(path: '/device', builder: (context, state) => const DevicePage()),
    ],
  );
}
