import 'package:flutter/material.dart';
import 'package:taesung_app/features/setting/widgets/setting_navigation_button.dart';

class SettingLayout extends StatelessWidget {
  const SettingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SettingNavigationButton(
                      title: '계정', to: '/setting/account'),
                  _buildDivider(),
                  const SettingNavigationButton(
                      title: '알람', to: '/setting/alarm'),
                  _buildDivider(),
                  const SettingNavigationButton(
                      title: "자동포집", to: '/setting/collect'),
                ],
              ),
            ),
            const Center(
              child: Text(
                '태성 연구소 CS: 052-247-8691',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return const Divider(
      height: 10,
    );
  }
}
