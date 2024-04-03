import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/auth/sign_up_screen.dart';
import 'package:taesung_app/features/auth/sign_up_success_screen.dart';
import 'package:taesung_app/models/auth_model.dart';
import 'package:taesung_app/providers/auth_provider.dart';
import 'package:taesung_app/widgets/error_content.dart';
import 'package:taesung_app/widgets/logo.dart';

class SignUpLayout extends ConsumerStatefulWidget {
  const SignUpLayout({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpLayoutState();
}

class _SignUpLayoutState extends ConsumerState<SignUpLayout> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    return authState.when(
      data: (auth) => switch (auth.signUpStatus) {
        // 회원가입 성공시 회원가입 성공 페이지로 이동
        SignUpStatus.success => const SignUpSuccessScreen(),
        _ => const SignUpScreen(),
      },
      error: (err, st) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              const SizedBox(height: 50),
              ErrorContent(provider: authProvider),
            ],
          ),
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
