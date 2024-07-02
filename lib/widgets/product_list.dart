import 'package:flutter/material.dart';
import 'package:health_fitness_app/widgets/product_container.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.145,
        child: const Row(children: [
          ProductContainer(
              backgroundColor: Color(0xFFfdf3f1),
              imageUrl: 'assets/images/image 17.png',
              titleText: 'Shop Quality\nSupplements Now', textColor: Color(0xff91524b),),
          SizedBox(width: 16.0),
          ProductContainer(
              backgroundColor: Color(0xFF5ecc9c),
              imageUrl: 'assets/images/Frame 52.png',
              titleText: 'Shop Quality Gym\nApparels Now', textColor: Colors.white,)
        ]),
      ),
    );
  }
}