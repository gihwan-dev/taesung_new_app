import 'package:flutter/material.dart';

Color getCollectCodeColor({required int ccIdx}) {
  switch (ccIdx) {
    case 1:
      return const Color.fromRGBO(38, 142, 73, 0.8);
    case 2:
      return const Color.fromRGBO(236, 216, 32, 1.0);
    case 3:
      return const Color.fromRGBO(208, 178, 1, 1.0);
    case 4:
      return const Color.fromRGBO(38, 142, 73, 1.0);
    case 5:
      return const Color.fromRGBO(21, 111, 46, 1.0);
    default:
      return Colors.red;
  }
}
