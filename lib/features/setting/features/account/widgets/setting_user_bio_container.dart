import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taesung_app/models/user_model.dart';

class SettingUserBioContainer extends StatelessWidget {
  final UserModel user;
  const SettingUserBioContainer({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text('등록일자'),
          Text(
            DateFormat('yyyy-MM-dd').format(DateTime.parse(user.regDate)),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
