import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/pages/auth/sign_in_page.dart';
import 'package:taesung_app/pages/main/home_page.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final token = ref.watch(tokenProvider);
    print('token: $token');
    return token.when(
      data: (token) => token == null ? const SignInPage() : const HomePage(),
      error: (err, st) => Column(
        children: [
          Text(
            'Error: $err',
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
