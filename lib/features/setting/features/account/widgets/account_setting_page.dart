import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('이름'),
                    Text(
                      user.name ?? '이름이 없습니다. 관리자에게 문의해 주세요.',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text('이메일'),
                    Text(
                      user.email,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    const Text('등록일자'),
                    Text(
                      DateFormat('yyyy-MM-dd')
                          .format(DateTime.parse(user.regDate)),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    '로그아웃',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
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
