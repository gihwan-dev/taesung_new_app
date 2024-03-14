import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSelectors extends StatelessWidget {
  final String date;
  final Function onChange;

  const DateSelectors({
    super.key,
    required this.date,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(
          const EdgeInsets.fromLTRB(10, 0, 0, 0),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      onPressed: () => showDatePicker(
        context: context,
        initialDate: DateTime.parse(date),
        firstDate: DateTime(2020),
        lastDate: DateTime(2025),
      ).then((value) => onChange(value == null ? date : value.toString())),
      child: Row(
        children: [
          Text(
            DateFormat('yyyy년 MM월 dd일').format(DateTime.parse(date)),
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
