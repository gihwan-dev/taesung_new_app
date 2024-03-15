import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/features/account/widgets/setting_sign_out_button.dart';
import 'package:taesung_app/features/setting/features/account/widgets/setting_user_bio_container.dart';
import 'package:taesung_app/providers/user_provider.dart';

class AccountSettingPage extends ConsumerStatefulWidget {
  const AccountSettingPage({super.key});

  @override
  ConsumerState<AccountSettingPage> createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends ConsumerState<AccountSettingPage> {
  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(userProvider);
    return userState.when(
      data: (user) => Scaffold(
        appBar: AppBar(
          title: const Text('계정'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingUserBioContainer(user: user),
              const Expanded(child: SizedBox()),
              const SettingSignOutButton()
            ],
          ),
        ),
      ),
      error: (err, st) => Column(
        children: [
          Text(
            'Error: $err',
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
