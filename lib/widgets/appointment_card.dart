import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color:
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/doctor_2.jpg",
              width: 45,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dr. Ruben Dorwart",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text("Dental Specialist",
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(
                height: 18,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 8.8,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Ionicons.calendar_outline,
                      size: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 5),
                      child: Text(
                        "Today",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2, right: 5),
                      child: Icon(
                        Ionicons.time_outline,
                        size: 18,
                      ),
                    ),
                    Text(
                      "14:30 - 15:30 AM",
                      style: TextStyle(),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 32,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Cancel"),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 32,
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text("Reschedule"),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
