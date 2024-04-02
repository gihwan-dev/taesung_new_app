import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorContent extends ConsumerWidget {
  final ProviderOrFamily provider;
  const ErrorContent({
    super.key,
    required this.provider,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '에러가 발생했습니다. 다시 시도해주세요.',
          style: TextStyle(color: Colors.red),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            ref.invalidate(provider);
          },
          child: const Text('새로고침'),
        ),
      ],
    );
  }
}
