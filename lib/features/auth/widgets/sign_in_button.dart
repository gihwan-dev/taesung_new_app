import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/consts/color_const.dart';
import 'package:taesung_app/providers/auth_provider.dart';

class SignInButton extends ConsumerStatefulWidget {
  const SignInButton({super.key});

  @override
  ConsumerState<SignInButton> createState() => _SignInButtonState();
}

class _SignInButtonState extends ConsumerState<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.all(15),
          ),
          backgroundColor: MaterialStatePropertyAll(primaryBlue),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ),
        onPressed: () async {
          final permission =
              await FirebaseMessaging.instance.requestPermission();
          String? fcmToken;

          if (permission.authorizationStatus ==
              AuthorizationStatus.authorized) {
            fcmToken = await FirebaseMessaging.instance.getToken();
          }

          await ref.read(authProvider.notifier).signIn(fcmToken);
        },
        child: const Text(
          '로그인',
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
