
import 'package:flutter/material.dart';
import 'package:time_work/sidebar/header.dart';
import 'package:time_work/sidebar/menu.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        color: Colors.white,
        child: Column(
          children: [
            AppHeader(),
            AppMenu(),
          ],
        ),
      ),
    );
  }
}
