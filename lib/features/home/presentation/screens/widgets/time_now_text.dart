import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeNowText extends StatelessWidget {
  const TimeNowText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        DateFormat('EEEE hh:mm a').format(DateTime.now()),
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 20,
          color: Colors.white
        ),
      ),
    );
  }
}
