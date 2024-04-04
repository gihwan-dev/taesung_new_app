import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/router_provider.dart';

class CollectCancelButton extends ConsumerWidget {
  const CollectCancelButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.grey[200],
          ),
        ),
        onPressed: () {
          ref.watch(goRouterProvider).pop();
        },
        child: const Text(
          '취소',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
