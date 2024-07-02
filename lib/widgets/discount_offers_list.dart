import 'package:flutter/material.dart';
import 'package:health_fitness_app/widgets/discount_offers_widget.dart';

class DiscountOffersList extends StatelessWidget {
  const DiscountOffersList({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          DiscountOffersWidget(
            title: 'beta Alanine Xplode', 
            subtitle: 'Mass gainer 400g', 
            imagelocation: 'assets/images/image 15.png',
             price: '\$39.45', 
             discount: '\$39.45',
              active: false,
          ),
           DiscountOffersWidget(
            title: 'beta Alanine Nutra', 
            subtitle: 'Muscle builder 400g', 
            imagelocation: 'assets/images/image 16.png',
             price: '\$129.45', 
             discount: '\$129.45',
              active: true,
      ),
       DiscountOffersWidget(
            title: 'beta Alanine Nutra', 
            subtitle: 'Muscle builder 400g', 
            imagelocation: 'assets/images/image 16.png',
             price: '\$129.45', 
             discount: '\$129.45',
              active: true,
          ),
        ],
      ),
    );
  }
}