import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:time_work/config/colors.dart';
import 'package:time_work/services/timer_services.dart';
import 'package:time_work/sidebar/side_bar.dart';
import 'package:time_work/widgets/event_list.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppColours.drkBlue));
  runApp(TimerApp());
}

class TimerApp extends StatelessWidget {
  const TimerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => TimerService(),
        child: Scaffold(
          drawer: SideBar(),
          drawerEnableOpenDragGesture: false,
          backgroundColor: Colors.grey[200],
          body: SafeArea(
            child: EventList(),
          ),
        ),
      ),
    );
  }
}
