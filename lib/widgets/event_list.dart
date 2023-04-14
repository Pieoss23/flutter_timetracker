import 'package:flutter/material.dart';
import 'package:time_work/config/colors.dart';
import 'package:time_work/models/timed_event.dart';
import 'package:time_work/services/timer_services.dart';
import 'package:time_work/widgets/event_item.dart';
import 'package:provider/provider.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TimerService timerService = context.watch<TimerService>();

    List<TimedEvent> timedEvents = timerService.timedEvents;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      color: Colors.white,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Divider(
          height: 1,
        ),
        itemCount: timedEvents.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {
                      timerService.addNew();
                    },
                    icon: Icon(Icons.add_circle_outline,
                        size: 25,
                        color: context.watch<TimerService>().timerActive
                            ? AppColours.grey
                            : AppColours.blue),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: AppColours.blue,
                      ),
                    ),
                  ),
                )
              ],
            );
          } else {
            return EventItem(event: timedEvents[index - 1]);
          }
        },
      ),
    );
  }
}
