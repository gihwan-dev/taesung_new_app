import 'package:flutter/material.dart';

IconData getBatteryIcon(int dsBat) {
  if (dsBat >= 90) {
    return Icons.battery_full;
  } else if (dsBat >= 85) {
    return Icons.battery_6_bar;
  } else if (dsBat >= 75) {
    return Icons.battery_5_bar;
  } else if (dsBat >= 65) {
    return Icons.battery_4_bar;
  } else if (dsBat >= 55) {
    return Icons.battery_3_bar;
  } else if (dsBat >= 35) {
    return Icons.battery_2_bar;
  } else if (dsBat >= 25) {
    return Icons.battery_1_bar;
  } else {
    return Icons.battery_alert;
  }
}
