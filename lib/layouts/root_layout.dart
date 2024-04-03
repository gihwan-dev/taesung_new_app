import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/pages/home_page.dart';
import 'package:taesung_app/pages/sign_in_page.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';

class RootLayout extends ConsumerWidget {
  const RootLayout({super.key});

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
        body: ErrorContent(provider: tokenProvider),
      ),
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
