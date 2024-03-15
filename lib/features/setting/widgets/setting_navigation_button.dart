import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/router_provider.dart';

class SettingNavigationButton extends ConsumerWidget {
  final String title;
  final String to;
  const SettingNavigationButton({
    super.key,
    required this.title,
    required this.to,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouteState = ref.watch(goRouterProvider);
    return ListTile(
      onTap: () {
        goRouteState.push(to);
      },
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
