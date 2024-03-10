import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/user_provider.dart';

class UserName extends ConsumerWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    return userState.when(
      data: (user) => Text(
        user.name ?? "이름을 설정해 주세요.",
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey[800],
          fontWeight: FontWeight.w600,
        ),
      ),
      error: (e, st) => Text('Error: $e'),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
