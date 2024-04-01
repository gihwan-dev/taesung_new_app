import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taesung_app/providers/auth_provider.dart';
import 'package:taesung_app/widgets/fade_in_wrapper.dart';
import 'package:taesung_app/widgets/logo.dart';

class SignUpSuccessScreen extends ConsumerWidget {
  const SignUpSuccessScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FadeInWrapper(
          child: ListView(
            shrinkWrap: true,
            children: [
              const Logo(),
              const SizedBox(height: 50),
              Text(
                '회원가입이 완료되었습니다.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ref.read(authProvider.notifier).reset();
                  context.go('/');
                },
                child: const Text(
                  '로그인 하기',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
