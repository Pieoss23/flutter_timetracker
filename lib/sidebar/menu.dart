import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_work/config/colors.dart';
import 'package:time_work/services/timer_services.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuItem(
          text: 'Profilo',
          icon: Icons.account_circle_rounded,
        ),
        MenuItem(
          text: 'Impostazioni',
          icon: Icons.settings,
        ),
        MenuItem(
          text: 'Frequenze',
          icon: Icons.watch,
        ),
        MenuItem(
          text: 'Uscita',
          icon: Icons.logout,
          onTap: () {
            context.read<TimerService>().clearAllData();
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onTap;

  const MenuItem({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            child: Icon(
              icon,
              size: 30,
              color: AppColours.grey,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
