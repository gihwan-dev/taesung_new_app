import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/providers/auth_provider.dart';

class SignUpButton extends ConsumerStatefulWidget {
  const SignUpButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends ConsumerState<SignUpButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.all(15),
          ),
          backgroundColor: MaterialStatePropertyAll(
            primaryBlue,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ),
        onPressed: () async {
          await ref.read(authProvider.notifier).signUp();
        },
        child: const Text(
          '회원가입',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
