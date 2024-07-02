import 'package:flutter/material.dart';
import 'package:health_fitness_app/widgets/product_list.dart';
import 'package:health_fitness_app/widgets/trainers_card.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/info_card5.dart';

class FitnessScreen extends StatelessWidget {
  const FitnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: AppBar(
            backgroundColor: Colors.white,
            title:
                const CustomSearchAppBar(hintText: "Search \"Whey Protein\""),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: const Color(0xFFFAFAFA),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.6,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    TrainersCard(
                      avatarUrl: 'assets/images/Ellipse 4.png',
                      name: 'Cult Fit',
                      progress: 0.4,
                      backgroundUrl: 'assets/images/Frame 29.png',
                    ),
                    TrainersCard(
                      avatarUrl: 'assets/images/Ellipse 7.png',
                      name: 'Gold\'s gym',
                      progress: 0.0,
                      backgroundUrl: 'assets/images/Frame 55.png',
                    ),
                    TrainersCard(
                      avatarUrl: 'assets/images/Ellipse 6.png',
                      name: 'Daily Yoga',
                      progress: 0.0,
                      backgroundUrl: 'assets/images/Frame 56.png',
                    ),
                  ],
                ),
              ),
            ),
            const InfoCard5(),
            _createSpace(24),
            const ProductList(),
          ],
        ),
      ),
    );
  }
}

Widget _createSpace(double value) {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: value,
    ),
  );
}
