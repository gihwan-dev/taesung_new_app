import 'package:flutter/material.dart';

Color getOdorLevelColor({int? value = 6}) {
  switch (value) {
    case 1:
      return const Color.fromRGBO(0, 164, 16, 100);
    case 2:
      return const Color.fromRGBO(12, 170, 0, 100);
    case 3:
      return const Color.fromRGBO(204, 195, 0, 100);
    case 4:
      return const Color.fromRGBO(255, 151, 28, 100);
    case 5:
      return const Color.fromRGBO(255, 59, 48, 100);
    default:
      return Colors.grey;
  }
}
