import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/auth/sign_in_button.dart';
import 'package:taesung_app/features/auth/sign_in_error_screen.dart';
import 'package:taesung_app/providers/auth_provider.dart';
import 'package:taesung_app/widgets/auth_navigator_buttons.dart';
import 'package:taesung_app/widgets/logo.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    return authState.when(
      data: (_) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const Logo(),
                    const SizedBox(
                      height: 50,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: '이메일',
                        hintText: '예) example@gmail.com',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        ref.read(authProvider.notifier).setEmail(value);
                      },
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '비밀번호',
                        hintText: '최소 6자리 이상',
                      ),
                      onChanged: (password) {
                        ref.read(authProvider.notifier).setPassword(password);
                      },
                    ),
                    const SizedBox(height: 30),
                    const SignInButton(),
                    const SizedBox(height: 5),
                    const AuthNavigatorButtons(
                      toSignIn: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      error: (err, st) {
        return SignInErrorScreen(err: err.toString());
      },
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
