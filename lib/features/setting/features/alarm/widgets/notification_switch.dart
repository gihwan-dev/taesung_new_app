import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taesung_app/providers/notification_setting_provider.dart';

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
}
