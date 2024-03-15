import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/auth/sign_in_page.dart';
import 'package:taesung_app/pages/home_page.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokenState = ref.watch(tokenProvider);
    return tokenState.when(
      data: (token) {
        if (token == null) {
          return const SignInPage();
        } else {
          return const HomePage();
        }
      },
      error: (err, st) => Scaffold(
        body: Column(
          children: [
            Text(
              'Error: $err',
              style: const TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
