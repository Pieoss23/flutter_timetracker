import 'package:flutter/material.dart';
import 'package:time_work/config/colors.dart';
import 'package:time_work/sidebar/profile.dart';
import 'package:time_work/sidebar/timer.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: TextStyle(color: Colors.white),
      child: Container(
        color: AppColours.blue,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Profile(),
            HeaderTimer(),
          ],
        ),
      ),
    );
  }
}
