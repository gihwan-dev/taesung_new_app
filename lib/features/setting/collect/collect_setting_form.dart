import 'package:flutter/material.dart';

class CollectSettingForm extends StatelessWidget {
  final TextEditingController ouController;
  final TextEditingController delayController;
  final String? ouValue;
  final String? delayValue;
  final void Function(String) onOuChange;
  final void Function(String) onDelayChange;
  const CollectSettingForm({
    super.key,
    required this.ouController,
    required this.delayController,
    required this.ouValue,
    required this.delayValue,
    required this.onOuChange,
    required this.onDelayChange,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Row(),
          const Text(
            '복합 악취 수치 설정',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildOuTextEditor(),
          const SizedBox(height: 50),
          const Text(
            '지연 시간 설정',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          _buildDelayTextEditor(),
        ],
      ),
    );
  }

  Row _buildDelayTextEditor() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: 70,
          child: TextField(
            controller: delayController,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            onChanged: onDelayChange,
          ),
        ),
        const SizedBox(width: 10),
        const Text('초'),
      ],
    );
  }

  Row _buildOuTextEditor() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: 70,
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            controller: ouController,
            onChanged: onOuChange,
          ),
        ),
        const SizedBox(width: 10),
        const Text('Ou'),
      ],
    );
  }
}
