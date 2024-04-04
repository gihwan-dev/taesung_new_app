import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/auth/sign_up_error_screen.dart';
import 'package:taesung_app/models/auth_model.dart';
import 'package:taesung_app/features/auth/sign_up_screen.dart';
import 'package:taesung_app/features/auth/sign_up_success_screen.dart';
import 'package:taesung_app/providers/auth_provider.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    return authState.when(
      data: (auth) => switch (auth.signUpStatus) {
        SignUpStatus.success => const SignUpSuccessScreen(),
        _ => const SignUpScreen(),
      },
      error: (err, st) => SignUpErrorScreen(err: err.toString()),
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
