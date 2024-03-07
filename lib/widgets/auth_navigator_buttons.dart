import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthNavigatorButtons extends StatelessWidget {
  final bool toSignIn;
  const AuthNavigatorButtons({super.key, required this.toSignIn});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: Text(
            toSignIn ? '로그인' : '회원가입',
            style: TextStyle(color: Colors.grey[600]),
          ),
          onPressed: () =>
              toSignIn ? context.go('/signIn') : context.go('/signUp'),
        )
      ],
    );
  }
}
