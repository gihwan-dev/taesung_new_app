import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/pages/main/main_page.dart';
import 'package:taesung_app/pages/auth/sign_in_page.dart';
import 'package:taesung_app/providers/secure_storage_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final token = ref.watch(tokenProvider);
    print(token);
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryBlue),
        useMaterial3: true,
      ),
      home: token.when(
        data: (token) => token == null ? const SignInPage() : const MainPage(),
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
      ),
    );
  }
}
