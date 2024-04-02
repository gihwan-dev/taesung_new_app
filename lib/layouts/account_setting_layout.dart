import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/features/setting/account/setting_sign_out_button.dart';
import 'package:taesung_app/features/setting/account/setting_user_bio_container.dart';
import 'package:taesung_app/providers/user_provider.dart';

class AccountSettingLayout extends ConsumerStatefulWidget {
  const AccountSettingLayout({super.key});

  @override
  ConsumerState<AccountSettingLayout> createState() =>
      _AccountSettingLayoutState();
}

class _AccountSettingLayoutState extends ConsumerState<AccountSettingLayout> {
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
      error: (err, st) => Scaffold(
        appBar: AppBar(
          title: const Text('계정'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('에러가 발생했습니다. 로그아웃 후 다시시도해 주세요.'),
              SizedBox(height: 20),
              SettingSignOutButton(),
            ],
          ),
        ),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
