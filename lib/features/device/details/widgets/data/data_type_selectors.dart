import 'package:flutter/material.dart';

class DataTypeSelector extends StatelessWidget {
  final Function onChanged;
  final String value;
  const DataTypeSelector({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: value,
      onChanged: (value) => onChanged(value),
      items: const [
        DropdownMenuItem(
          value: 'sensor',
          child: Text('센서'),
        ),
        DropdownMenuItem(
          value: 'weather',
          child: Text('날씨'),
        ),
      ],
    );
  }
}
