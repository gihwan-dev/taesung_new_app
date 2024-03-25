import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/notification_setting_provider.dart';
import 'package:taesung_app/providers/user_provider.dart';

class NotificationSwitch extends ConsumerStatefulWidget {
  final int nsIdx;
  final int diIdx;
  final String title;
  final bool value;
  final NotificationPatchType type;
  const NotificationSwitch({
    super.key,
    required this.nsIdx,
    required this.diIdx,
    required this.title,
    required this.value,
    required this.type,
  });

  @override
  ConsumerState<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends ConsumerState<NotificationSwitch> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      trailing: Switch(
        value: widget.value,
        onChanged: (bool value) async {
          if (ref.read(userProvider).value!.token == null) {
            if (mounted) {
              _buildAlertDialog(context);
              return;
            }
          }
          await ref
              .read(notificationSettingProvider(diIdx: widget.diIdx).notifier)
              .updateNotificationSetting(
                nsIdx: widget.nsIdx,
                type: widget.type,
                value: value,
              );
        },
      ),
    );
  }

  Future<dynamic> _buildAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "알림이 허용되어있지 않습니다.",
          style: TextStyle(fontSize: 18),
        ),
        content: const Text('알림을 허용하시겠습니까?'),
        actions: [
          TextButton(
            child: const Text("허용"),
            onPressed: () {
              // TODO: 허용 로직 작성
            },
          ),
          TextButton(
            child: const Text(
              "취소",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            onPressed: () => {
              Navigator.of(context).pop(),
            },
          )
        ],
      ),
    );
  }
}
