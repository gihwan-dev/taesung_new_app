import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/user_provider.dart';

class TurnOffNotificationButton extends ConsumerWidget {
  const TurnOffNotificationButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton(
      onPressed: () async {
        final result = await ref.read(userProvider.notifier).deleteFcmToken();
        ref.invalidate(userProvider);
        if (context.mounted) {
          if (result) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('알림 끄기가 완료되었습니다.'),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('알림 끄기에 실패했습니다. 다시 시도해 주세요.'),
              ),
            );
          }
        }
      },
      child: const Text('알림 끄기'),
    );
  }
}
