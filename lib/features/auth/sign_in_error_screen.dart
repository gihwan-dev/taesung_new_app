import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/auth_provider.dart';

import 'package:taesung_app/widgets/logo.dart';

class SignInErrorScreen extends ConsumerWidget {
  final String err;
  const SignInErrorScreen({
    super.key,
    required this.err,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Logo(),
            const SizedBox(height: 50),
            Text(
              'Error: ${err.toString()}',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.invalidate(authProvider);
              },
              child: const Text('새로고침'),
            ),
          ],
        ),
      ),
    );
  }
}
