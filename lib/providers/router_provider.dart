import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taesung_app/pages/account_setting_page.dart';
import 'package:taesung_app/pages/alarm_setting_page.dart';
import 'package:taesung_app/pages/collect_setting_detail_page.dart';
import 'package:taesung_app/pages/collect_setting_page.dart';
import 'package:taesung_app/pages/device_alram_setting_page.dart';
import 'package:taesung_app/pages/device_page.dart';
import 'package:taesung_app/pages/sign_in_page.dart';
import 'package:taesung_app/pages/sign_up_page.dart';
import 'package:taesung_app/pages/root_page.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const RootPage(),
      ),
      GoRoute(
        path: '/signIn',
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: '/signUp',
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: '/device/:id',
        builder: (context, state) => const DevicePage(),
      ),
      GoRoute(
        path: '/setting/account',
        builder: (context, state) => const AccountSettingPage(),
      ),
      GoRoute(
        path: '/setting/collect',
        builder: (context, state) => const CollectSettingPage(),
      ),
      GoRoute(
        path: '/setting/alarm',
        builder: (context, state) => const AlarmSettingPage(),
      ),
      GoRoute(
        path: '/setting/alarm/:id',
        builder: (context, state) => const DeviceAlarmSettingPage(),
      ),
      GoRoute(
        path: '/setting/collect/:id',
        builder: (context, state) => const CollectSettingDetailPage(),
      )
    ],
  );
}
