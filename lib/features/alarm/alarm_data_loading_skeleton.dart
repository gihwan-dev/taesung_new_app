import 'package:flutter/material.dart';

class AlarmDataLoadingSkeleton extends StatelessWidget {
  const AlarmDataLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
