import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/user_provider.dart';

class TurnOnNotificationButton extends ConsumerWidget {
  const TurnOnNotificationButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton(
      onPressed: () async {
        final permission = await FirebaseMessaging.instance.requestPermission(
          provisional: true,
        );
        if (permission.authorizationStatus == AuthorizationStatus.authorized) {
          final fcmToken = await FirebaseMessaging.instance.getToken();
          final result =
              await ref.read(userProvider.notifier).createFcmToken(fcmToken);

          ref.invalidate(userProvider);
          if (context.mounted) {
            showResultSnackBar(context, result);
          }
          // 알림이 거부 되어있는 경우
        } else {
          if (context.mounted) {
            showPermissionSnackBar(context);
          }
        }
      },
      child: const Text('알림 허용'),
    );
  }

  void showResultSnackBar(BuildContext context, bool result) {
    if (result) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('알림 허용이 완료되었습니다.'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('알림 허용에 실패했습니다. 다시 시도해 주세요.'),
        ),
      );
    }
  }

  void showPermissionSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('알림 허용이 거부되었습니다. 앱 설정에서 알림을 허용해주세요.'),
        action: SnackBarAction(
            label: '설정으로 이동',
            onPressed: () async {
              await AppSettings.openAppSettings();
            }),
      ),
    );
  }
}
