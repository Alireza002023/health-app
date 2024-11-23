import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcon = [
      CustomIcon(name: "Appointment", icon: 'assets/appointment.png'),
      CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
      CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
      CustomIcon(name: "More", icon: 'assets/more.png'),
    ];

    List<CustomIcon> healthNeeds = [
      CustomIcon(name: "Appointment", icon: 'assets/appointment.png'),
      CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
      CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
      CustomIcon(name: "Pharmacy", icon: 'assets/drug.png'),
    ];

    List<CustomIcon> specialisedCared = [
      CustomIcon(name: "Diabetes", icon: 'assets/blood.png'),
      CustomIcon(name: "Health Care", icon: 'assets/health_care.png'),
      CustomIcon(name: "Dental", icon: 'assets/tooth.png'),
      CustomIcon(name: "Insured", icon: 'assets/insurance.png'),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(customIcon.length, (index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                if (index == customIcon.length - 1) {
                  showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      builder: (context) {
                        return Container(
                          padding: const EdgeInsets.all(20),
                          width: double.infinity,
                          height: 360,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Health Needs",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  healthNeeds.length,
                                  (index) {
                                    return Column(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          borderRadius:
                                              BorderRadius.circular(90),
                                          child: Container(
                                            width: 60,
                                            height: 60,
                                            padding: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .primaryColor
                                                    .withOpacity(0.4),
                                                shape: BoxShape.circle),
                                            child: Image.asset(
                                              healthNeeds[index].icon,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Text(healthNeeds[index].name),
                                      ],
                                    );
                                  },
                                ),
                              ),
                               const SizedBox(height: 10),
                              Text(
                                "Specialised Cared",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(specialisedCared.length,
                                    (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.2),
                                                shape: BoxShape.circle
                                          ),
                                          child: Image.asset(
                                              specialisedCared[index].icon),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        specialisedCared[index].name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      )
                                    ],
                                  );
                                }),
                              )
                            ],
                          ),
                        );
                      });
                }
              },
              borderRadius: BorderRadius.circular(90),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.4),
                    shape: BoxShape.circle),
                child: Image.asset(customIcon[index].icon),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(customIcon[index].name),
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String name;
  final String icon;

  const CustomIcon({required this.name, required this.icon});
}
