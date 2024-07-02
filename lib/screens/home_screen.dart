import 'package:flutter/material.dart';
import 'package:health_fitness_app/utils/routes.dart';
import 'package:health_fitness_app/widgets/custom_button.dart';
import 'package:health_fitness_app/widgets/custom_search_bar.dart';
import 'package:health_fitness_app/widgets/discount_offers_list.dart';
import 'package:health_fitness_app/widgets/info_card.dart';
import 'package:health_fitness_app/widgets/product_list.dart';

import '../widgets/info_card2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.145),
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.account_circle,
                      size: 32,
                    ),
                    Row(
                      children: [
                        const Text(
                          'GURUGRAM, 122105',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.expand_more,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.message_outlined),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, StaticRoutes.messagingScreen);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const CustomSearchAppBar(hintText: "Search \"Whey Protein\""),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: const Color(0xFFFAFAFA),
        child: CustomScrollView(
          slivers: [
            const InfoCard(),
            _spacer(24)!,
            const InfoCard2(),
            _spacer(28)!,
            const ProductList(),
            _spacer(28)!,
            const SliverToBoxAdapter(
                child: CustomButton(
              buttonTitle: 'View More',
            )),
            _spacer(28)!,
            const SliverToBoxAdapter(
                child: Text(
              'Regular supplements',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            )),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: DiscountOffersList(),
              ),
            )
          ],
        ),
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
