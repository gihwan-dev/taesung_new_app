import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/pages/auth/sign_up_button.dart';
import 'package:taesung_app/providers/auth_provider.dart';
import 'package:taesung_app/widgets/auth_navigator_buttons.dart';
import 'package:taesung_app/widgets/logo.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                      labelText: '이름',
                      hintText: '',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      ref.read(authProvider.notifier).setName(value);
                    },
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: '이메일',
                      hintText: '',
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
                      hintText: '',
                    ),
                    onChanged: (password) {
                      ref.read(authProvider.notifier).setPassword(password);
                    },
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '비밀번호 확인',
                      hintText: '',
                    ),
                    onChanged: (password) {
                      ref
                          .read(authProvider.notifier)
                          .setConfirmPassword(password);
                    },
                  ),
                  const SizedBox(height: 30),
                  const SignUpButton(),
                  const SizedBox(height: 5),
                  const AuthNavigatorButtons(
                    toSignIn: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
