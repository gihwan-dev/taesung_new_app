import 'package:flutter/material.dart';
import 'package:taesung_app/pages/auth/sign_in_page.dart';
import 'package:taesung_app/pages/auth/sign_up_page.dart';

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
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) =>
                  toSignIn ? const SignInPage() : const SignUpPage(),
            ),
          ),
        )
      ],
    );
  }
}
