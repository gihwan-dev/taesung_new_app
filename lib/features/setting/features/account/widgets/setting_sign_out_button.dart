import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/router_provider.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

class SettingSignOutButton extends ConsumerStatefulWidget {
  const SettingSignOutButton({
    super.key,
  });

  @override
  ConsumerState<SettingSignOutButton> createState() =>
      _SettingSignOutButtonState();
}

class _SettingSignOutButtonState extends ConsumerState<SettingSignOutButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          ref.read(tokenProvider.notifier).delete();
          ref.watch(goRouterProvider).go('/');
        },
        child: const Text(
          '로그아웃',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
