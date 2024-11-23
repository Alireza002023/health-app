import 'package:flutter/material.dart';
import 'package:health_app/widgets/health_needs.dart';
import 'package:health_app/widgets/nearby_doctors.dart';
import 'package:health_app/widgets/upcoming_card.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          //Container
          const UpcomingCard(),
          const SizedBox(height: 20),
          Text(
            "Health Needs",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 15),

          //rol
          const HealthNeeds(),
          const SizedBox(height: 15),
          Text(
            "Nearby  Doctor",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          //card details
          const NearbyDoctors()
        ],
      ),
    );
  }
}
