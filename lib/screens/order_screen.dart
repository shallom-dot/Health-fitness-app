import 'package:flutter/material.dart';
import 'package:health_fitness_app/widgets/discount_offers_list.dart';
import '../widgets/custom_search_bar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.13),
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.arrow_back_rounded),
                        SizedBox(width: 12),
                        Text(
                          'Cart',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.help_outline),
                      onPressed: () {},
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
        color: const Color(0xFFFAFAFA),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 38),
                    child: Image.asset('assets/images/image 20.png'),
                  ),
                  const Text(
                    'Your Cart is Empty',
                    style: TextStyle(
                      fontFamily: 'Inter-SemiBold',
                      fontSize: 20,
                      color: Color(0xFF161616),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      'Your cart is empty. Start shopping \n now to find your perfect fit.',
                      style: TextStyle(
                        fontFamily: 'Inter-Regular',
                        fontSize: 16,
                        color: Color(0xFF767676),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16 ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Discount & Offers',
                        style: TextStyle(
                          fontFamily: 'Inter-Bold',
                          fontSize: 20,
                          color: Color(0xFF161616),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: DiscountOffersList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

