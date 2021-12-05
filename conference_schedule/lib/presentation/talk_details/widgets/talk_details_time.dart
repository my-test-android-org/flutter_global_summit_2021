import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TalkDetailsTime extends StatelessWidget {
  const TalkDetailsTime({
    Key? key,
    required this.start,
    required this.end,
  }) : super(key: key);

  final DateTime start;
  final DateTime end;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.jm();

    return Row(
      children: [
        Text(dateFormat.format(start.toLocal())),
        const Text(' - '),
        Text(dateFormat.format(end.toLocal())),
        const Spacer(),
        const OutlinedButton(
          onPressed: null,
          child: Text('Add to calendar'),
        ),
      ],
    );
  }
}
