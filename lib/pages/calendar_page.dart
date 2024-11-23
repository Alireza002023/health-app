import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/widgets/appointment_card.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          CupertinoSlidingSegmentedControl(
            padding: const EdgeInsets.all(5),
            groupValue: activeIndex,
            children: const {
              0: Text("Upcoming"),
              1: Text("Complete"),
              2: Text("Result"),
            },
            onValueChanged: (value) {
              setState(() {
                activeIndex = value!;
              });
            },
          ),
          const SizedBox( height: 20),
          const AppointmentCard(),

        ],

      ),
    );
  }
}
