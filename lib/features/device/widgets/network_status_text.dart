import 'package:flutter/material.dart';

class NetworkStatusText extends StatelessWidget {
  final bool hasError;
  const NetworkStatusText({
    required this.hasError,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.wifi, color: hasError ? Colors.red : Colors.green);
  }
}
