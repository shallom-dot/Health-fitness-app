import 'package:flutter/material.dart';
import 'package:health_fitness_app/widgets/doctor_card_list.dart';
import 'package:health_fitness_app/widgets/product_list_2.dart';

import '../widgets/custom_search_bar.dart';
import '../widgets/info_card4.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

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
            title: const CustomSearchAppBar(hintText: "Search \"Gloves\""),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: const Color(0xFFFAFAFA),
        child: CustomScrollView(slivers: [
          const InfoCard4(),
          _spacer(28)!,
          const ProductList2(),
          _spacer(28)!,
          const SliverToBoxAdapter(
              child: Text(
            'Instant Consultations',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          )),
          _spacer(28)!,
          const DoctorCardList(),
        ]),
      ),
    );
  }
}

Widget? _spacer(double verticalSpace) {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: verticalSpace,
    ),
  );
}
