import 'package:flutter/material.dart';
import 'package:health_fitness_app/widgets/doctor_card.dart';

class DoctorCardList extends StatelessWidget {
  const DoctorCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            DoctorCard(
              specialistsName: 'Mr. Anil Kumar',
              rating: '3.5',
              yearsInPractice: 5,
              imageUrl: 'assets/images/image 5.png',
            ),
            SizedBox(width: 16,),
            DoctorCard(
              specialistsName: 'Ms. Reeta...',
              rating: '4.0',
              yearsInPractice: 3,
              imageUrl: 'assets/images/image 6.png',
            ),
          ],
        ),
      ),
    );
  }
}
